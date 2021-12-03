<?php

$errorMsg = "";
if (isset($_GET["error"]))
    $errorMsg = $_GET["error"];
    
require_once "../vues/registration.php";