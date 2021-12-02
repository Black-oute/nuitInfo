<?php
/**
 * Script de validation de l'inscription
 */

// si données valides
if (isset($_POST["username"]) && !empty($_POST["username"]) && isset($_POST["email"]) && !empty($_POST["email"])
    && isset($_POST["confirmEmail"]) && !empty($_POST["confirmEmail"]) && isset($_POST["password"]) && !empty($_POST["password"])
    && isset($_POST["confirmPassword"]) && !empty($_POST["confirmPassword"]))
{
    // si email confirmé
    if ($_POST["email"] == $_POST["confirmEmail"])
    {
        // si format de mdp correct
        if (strlen($_POST["password"]) >= 8)
        {
            // si mot de passe confirmé
            if ($_POST["password"] == $_POST["confirmPassword"])
            {
                // requête sql
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