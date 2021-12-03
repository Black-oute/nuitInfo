<?php
/**
 * Script validation de la connexion
 */

require_once "connectionPDO.php";

$error = "";

if (isset($_POST["email"]) && !empty($_POST["email"]) && isset($_POST["password"]) && !empty($_POST["password"]))
{
    // requête sql de recherhe de l'user
    $stmt = $db->prepare(<<<SQL
    SELECT *
    FROM Utilisateur
    SQL);

    $stmt->execute(array(":mail" => htmlspecialchars($_POST["email"]),
                 ":mot_de_passe" => hash("sha1", htmlspecialchars($_POST["password"]))
    ));

    if ($stmt->rowCount() == 1)
    {
        $stmt = $stmt->fetch();

        $_SESSION["username"] = $stmt["pseudo"];
        $_SESSION["email"] = $stmt["mail"];
        $_SESSION["firstname"] = $stmt["prenom"];
        $_SESSION["lastname"] = $stmt["nom"];

        header("Location: ../controleurs/C_home.php");
    }
    else
    {
        $error = "Identifiants invalides";
    }
}
else
{
    $error = "Formulaire invalide";
}

if ($error != "")
    header("Location: ../controleurs/C_connection.php?error=$error");