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

    <div id="main-content">

        <form action="../models/registration.php" method="post">
            <div class="mb-3">
                <label for="lastname" class="form-label">Nom</label>
                <input type="text" name="lastname" class="form-control" id="lastname" required>
            </div>

            <div class="mb-3">
                <label for="firstname" class="form-label">Prénom</label>
                <input type="text" name="firstname" class="form-control" id="firstname" required>
            </div>

            <div class="mb-3">
                <label for="statut" class="form-label">Statut : (Sauveteur/Sauvé)</label>
                <input type="text" name="statut" class="form-control" id="statut" required>
            </div>
            
            <div class="mb-3">
                <label for="birth" class="form-label">Date de naissance</label>
                <input type="date" name="birth" class="form-control" id="birth" required>
            </div>

            <div class="mb-3">
                <label for="death" class="form-label">Date de deces</label>
                <input type="date" name="death" class="form-control" id="death">
            </div>

            <div class="mb-3">
                <label for="news" class="form-label">Infos complémentaire</label>
                <input type="long-text" name="news" class="form-control" id="news" required> 
            </div>
            
            <div class="mb-3">
                <label for="nbChild" class="form-label">Nombre d'enfant</label>
                <input type="number" name="nbChild" min="0" max="100" class="form-control" id="nbChild" required>
            </div>


            <div class="mb-3">
                <label for="married">Satut famillial</label><br>
                <input type="radio" id="married1" name="married" value="oui">
                <label for="married1">Oui</label><br>
                <input type="radio" id="married2" name="married" value="non">
                <label for="married2">Non</label>
            </div>

            <div class="mb-3">
                <label for="sources" class="form-label">Source (lien): </label>
                <input type="text" name="sources" class="form-control" id="sources" required>
            </div>

            <div class="mb-3">
                <label for="decored">Décorer :</label><br>
                <input type="radio" id="decored1" name="decored" value="oui">
                <label for="decored1">Oui</label><br>
                <input type="radio" id="decored2" name="decored" value="non">
                <label for="decored2">Non</label>
            </div>

            <div class="mb-3">
                <label for="speech">As-t-il fait un discours :</label><br>
                <input type="radio" id="speech1" name="speech" value="oui">
                <label for="speech1">Oui</label><br>
                <input type="radio" id="speech2" name="speech" value="non">
                <label for="speech2">Non</label>
            </div>

            <button type="submit" class="btn btn-primary">Envoyer</button>
        </form>

    </div>

</body>

</html>