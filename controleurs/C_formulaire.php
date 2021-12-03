<?php
session_start();

if (!isset($_SESSION["username"]))
    header("Location: ../controleurs/C_connection.php");

require_once "../vues/formulaire.php";