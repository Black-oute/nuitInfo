<?php

session_start();
session_destroy();

header("Location: ../controleurs/C_home.php");