<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Inscription</title>
</head>

<body>

    <div id="main-content">

        <form action="models/connection.php" method="post">
            <div class="mb-3">
                <label for="username" class="form-label">Nom d'utilisateur</label>
                <input type="text" name="username" class="form-control" id="username" required>
            </div>
            
            <div class="mb-3">
                <label for="email" class="form-label">Adresse email</label>
                <input type="email" name="email" class="form-control" id="email" required>
            </div>

            <div class="mb-3">
                <label for="conf-email" class="form-label">Confirmer l'adresse email</label>
                <input type="email" name="confirmEmail" class="form-control" id="conf-email" required>
            </div>

            <div class="mb-3">
                <label for="password" class="form-label">Mot de passe</label>
                <input type="password" name="password" class="form-control" id="password" required>
                <div id="passwordHelpBlock" class="form-text">
                    Votre mot de passe doit contenir au moins 8 caractères.
                </div>  
            </div>
            
            <div class="mb-3">
                <label for="conf-password" class="form-label">Confirmer le mot de passe</label>
                <input type="password" name="confirmPassword" class="form-control" id="conf-password" required>
                <div id="passwordHelpBlock2" class="form-text">
                    Votre mot de passe doit contenir au moins 8 caractères.
                </div> 
            </div>

            <button type="submit" class="btn btn-primary">S'inscrire</button>
        </form>

    </div>

</body>

</html>