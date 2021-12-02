<?php

require_once "connectionPDO.php";

if (isset($_POST["email"]) && !empty($_POST["email"]) && isset($_POST["password"]) && !empty($_POST["password"]))
{
    // requête sql de recherhe de l'user
    $stmt = $db->prepare(<<<SQL
    SELECT *
    FROM Utilisateur
    WHERE email = :email
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
        // ERREUR
    }
}
else
{
    // ERREUR
}