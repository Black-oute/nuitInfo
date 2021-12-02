<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Connexion</title>
</head>

<body>

    <?php
    require_once "../vues/includes/header.php";
    ?>

    <main class="form-signin text-center" style="margin-left: 30%; margin-right: 30%;">
        <form action="../model/connection.php" method="post">
            <h1 class="h3 mb-3 fw-normal">Connectez-vous</h1>

            <div class="form-floating mb-3">
                <input type="email" class="form-control" name="email" id="email" placeholder="name@exemple.com">
                <label for="email">Adresse email</label>
            </div>
            <div class="form-floating mb-3">
                <input type="password" class="form-control" name="password" id="password" placeholder="Mot de passe">
                <label for="password">Mot de passe</label>
            </div>

            <button class="w-100 btn btn-lg btn-primary" type="submit">Se connecter</button>
        </form>
    </main>

    <?php
    require_once "../vues/includes/footer.php";
    ?>

</body>

</html>