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
    
    <div id="main-content">

    <main class="form-signin text-center" style="margin-left: 30%; margin-right: 30%;">
        <form action="../models/registration.php" method="post">
            <div class="form-floating mb-3">
                <input type="text" name="lastname" class="form-control" id="lastname" required>
                <label for="lastname" class="form-label">Nom</label>
            </div>

            <div class="form-floating mb-3">
                <input type="text" name="firstname" class="form-control" id="firstname" required>
                <label for="firstname" class="form-label">Prénom</label>
            </div>

            <div class="form-floating mb-3">
                <input type="text" name="statut" class="form-control" id="statut" required>
                <label for="statut" class="form-label">Statut : (Sauveteur/Sauvé)</label>
            </div>
            
            <div class="form-floating mb-3">
                <input type="date" name="birth" class="form-control" id="birth" required>
                <label for="birth" class="form-label">Date de naissance</label>
            </div>

            <div class="form-floating mb-3">
                <input type="date" name="death" class="form-control" id="death">
                <label for="death" class="form-label">Date de deces (si mort)</label>
            </div>

            <div class="form-floating mb-3">
                <textarea name="news" class="form-control" id="news" rows="3"required></textarea>
                <label for="news" class="form-label">Infos complémentaire</label> 
            </div>
            
            <div class="form-floating mb-3">
                <input type="number" name="nbChild" min="0" max="100" class="form-control" id="nbChild" required>
                <label for="nbChild" class="form-label">Nombre d'enfant</label>
            </div>

            <div class="form-check form-check-inline">
                <label class="form-check-label" for="married">Marrier</label>
                <input class="form-check-input" type="checkbox" id="married" value="marrier">
            </div>

            <div class="form-floating mb-3">
                <input type="text" name="sources" class="form-control" id="sources" required>
                <label for="sources" class="form-label">Source (lien): </label>
            </div>

            <div class="form-check form-check-inline">
                <label class="form-check-label" for="decored">Décorer</label>
                <input class="form-check-input" type="checkbox" id="decored" value="decorer">
            </div>
            <br>
            <div class="form-check form-check-inline">
                <label class="form-check-label" for="speech">As fait un discours</label>
                <input class="form-check-input" type="checkbox" id="speech" value="speech">
            </div><br>

            <button type="submit" class="btn btn-primary">Envoyer</button>
        </form>
    </main>
    </div>
    <?php
    require_once "../vues/includes/footer.php";
    ?>
</body>

</html>