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

    <div id="main-content">

        <form action="../model/connection.php" method="post">
            <div class="mb-3">
                <label for="email" class="form-label">Adresse email</label>
                <input type="email" name="email" class="form-control" id="email" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Mot de passe</label>
                <input type="password" name="password" class="form-control" id="password" required>
            </div>
            
            <button type="submit" class="btn btn-primary">Valider</button>
        </form>

    </div>

    <?php
    require_once "../vues/includes/footer.php";
    ?>

</body>

</html>