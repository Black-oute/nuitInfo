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
    WHERE mail = :email
    AND password = :password
    SQL);

    $stmt->execute(array(":email" => $_POST["email"], ":password" => hash("sha256", $_POST["password"])));

    if ($stmt->rowCount() == 1)
    {
        $stmt = $stmt->fetch();
        $_SESSION["username"] = $stmt["pseudo"];
        $_SESSION["email"] = $stmt["email"];
        $_SESSION["firstname"] = $stmt["prenom"];
        $_SESSION["lastname"] = $stmt["nom"];
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