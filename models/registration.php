<?php
/**
 * Script de validation de l'inscription
 */

require_once "connectionPDO.php";

$error = "";

// si données valides
if (isset($_POST["username"]) && !empty($_POST["username"]) && isset($_POST["email"]) && !empty($_POST["email"])
    && isset($_POST["confirmEmail"]) && !empty($_POST["confirmEmail"]) && isset($_POST["password"]) && !empty($_POST["password"])
    && isset($_POST["confirmPassword"]) && !empty($_POST["confirmPassword"]) && isset($_POST["firstname"]) && !empty($_POST["firstname"])
    && isset($_POST["lastname"]) && !empty($_POST["lastname"]))
{
    // si email confirmé
    if ($_POST["email"] == $_POST["confirmEmail"])
    {
        // si format de mdp correct
        if (strlen($_POST["password"]) >= 3)
        {
            // si mot de passe confirmé
            if ($_POST["password"] == $_POST["confirmPassword"])
            {
                // requête sql
                $stmt = $db->prepare(<<<SQL
                INSERT INTO Utilisateur (pseudo, nom, prenom, mail, mot_de_passe)
                VALUES (:pseudo, :nom, :prenom, :email, :mot_de_passe);
                SQL);

                $stmt->execute(array(
                    ":pseudo" => htmlspecialchars($_POST["username"]),
                    ":nom" => htmlspecialchars($_POST["lastname"]),
                    ":prenom" => htmlspecialchars($_POST["firstname"]),
                    ":email" => htmlspecialchars($_POST["email"]),
                    ":mot_de_passe" => hash("sha256", htmlspecialchars($_POST["password"]))
                ));

                echo "ok";
            }
            else
            {
                $error = "Le mot de passe ne correspond pas";
            }
        }
        else
        {
            $error = "Mot de passe invalide";
        }
    }
    else
    {
        $error = "Email invalide";
    }
}
else
{
    $error = "Formulaire invalide";
}

if ($error != "")
    header("Location: registrationController.php?error=$error");