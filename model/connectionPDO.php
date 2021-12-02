<?php
/**
 * Connexion à la base de données
 */

// username/mot de passe d'accès de la base
define("USER", "root");
define("PASSWORD", "");

try {
    $db = new PDO('mysql:host=localhost;dbname=black_oute', USER, PASSWORD);
} catch (PDOException $e) {
    print "Erreur !: " . $e->getMessage() . "<br/>";
    die();
}