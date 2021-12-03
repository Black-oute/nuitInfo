<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Inscription</title>
</head>

<body>

    <?php
    require_once "../vues/includes/header.php";
    ?>

    <main class="form-signin text-center" style="margin-left: 30%; margin-right: 30%;">
        <form action="../models/registration.php" method="post">
            <h1 class="h3 mb-3 fw-normal">Inscrivez-vous</h1>

            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="username" id="username" placeholder="Nom d'utilisateur" required>
                <label for="username">Nom d'utilisateur</label>
            </div>
            
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="firstname" id="firstname" placeholder="Prénom" required>
                <label for="firstname">Prénom</label>
            </div>
            
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="lastname" id="lastname" placeholder="Nom" required>
                <label for="lastname">Nom</label>
            </div>

            <div class="form-floating mb-3">
                <input type="email" class="form-control" name="email" id="email" placeholder="name@exemple.com" required>
                <label for="email">Adresse email</label>
            </div>

            <div class="form-floating mb-3">
                <input type="email" class="form-control" name="confirmEmail" id="conf-email" placeholder="name@exemple.com" required>
                <label for="conf-email">Confirmer l'adresse email</label>
            </div>

            <div class="form-floating mb-3">
                <input type="password" class="form-control" name="password" id="password" placeholder="Mot de passe" required>
                <label for="password">Mot de passe</label>
            </div>
            
            <div class="form-floating mb-3">
                <input type="password" class="form-control" name="confirmPassword" id="conf-password" placeholder="Mot de passe" required>
                <label for="conf-password">Confirmer le mot de passe</label>
            </div>

            <input type="submit" class="w-100 btn btn-lg btn-primary" value="Se Connecter">
        </form>
        
        <div class="text-danger mt-3"><?= $errorMsg ?></div>
    </main>


    <?php
    require_once "../vues/includes/footer.php";
    ?>

</body>

</html>