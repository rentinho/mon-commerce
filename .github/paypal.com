# Création d'un fichier HTML avec le contenu fourni

html_content = """
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Commerce Personnel</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f8ff; /* Bleu clair pour le fond */
        }
        header {
            background-color: #4CAF50; /* Vert pour l'en-tête */
            color: white;
            text-align: center;
            padding: 1em 0;
        }
        nav {
            display: flex;
            justify-content: center;
            background-color: #008CBA; /* Bleu pour la navigation */
            padding: 0.5em 0;
        }
        nav a {
            color: white;
            margin: 0 1em;
            text-decoration: none;
            font-weight: bold;
        }
        .container {
            padding: 2em;
        }
        .section {
            margin-bottom: 2em;
        }
        h2 {
            color: #4CAF50;
        }
        footer {
            background-color: #4CAF50;
            color: white;
            text-align: center;
            padding: 1em 0;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>
    <header>
        <h1>Bienvenue sur mon site de commerce</h1>
    </header>
    <nav>
        <a href="#vin">Vin</a>
        <a href="#telephones">Téléphones</a>
        <a href="#eau">Eau Pure</a>
        <a href="#contact">Contact</a>
    </nav>
    <div class="container">
        <div id="vin" class="section">
            <h2>Nos Vins</h2>
            <p>Découvrez notre sélection de vins de qualité, soigneusement choisis pour satisfaire les palais les plus exigeants.</p>
            <!-- Ajouter des descriptions et images de produits ici -->
        </div>
        <div id="telephones" class="section">
            <h2>Nos Téléphones</h2>
            <p>Explorez notre gamme de téléphones dernier cri, alliant performance et design élégant.</p>
            <!-- Ajouter des descriptions et images de produits ici -->
        </div>
        <div id="eau" class="section">
            <h2>Notre Eau Pure</h2>
            <p>Offrez-vous le luxe d'une eau pure et rafraîchissante, parfaite pour rester hydraté tout au long de la journée.</p>
            <!-- Ajouter des descriptions et images de produits ici -->
        </div>
        <div id="contact" class="section">
            <h2>Contactez-nous</h2>
            <p>Pour toute question ou information supplémentaire, n'hésitez pas à nous contacter via le formulaire ci-dessous :</p>
            <form>
                <label for="name">Nom :</label><br>
                <input type="text" id="name" name="name"><br>
                <label for="email">Email :</label><br>
                <input type="email" id="email" name="email"><br>
                <label for="message">Message :</label><br>
                <textarea id="message" name="message" rows="4"></textarea><br><br>
                <input type="submit" value="Envoyer">
            </form>
        </div>
    </div>
    <footer>
        <p>&copy; 2024 Commerce Personnel. Tous droits réservés.</p>
    </footer>
</body>
</html>
"""

# Enregistrer le contenu HTML dans un fichier
file_path = "/mnt/data/commerce_personnel.html"
with open(file_path, "w") as file:
    file.write(html_content)

file_path
# These are supported funding model platforms

github: # Replace with up to 4 GitHub Sponsors-enabled usernames e.g., [user1, user2]
patreon: # Replace with a single Patreon username
open_collective: # Replace with a single Open Collective username
ko_fi: # Replace with a single Ko-fi username
tidelift: # Replace with a single Tidelift platform-name/package-name e.g., npm/babel
community_bridge: # Replace with a single Community Bridge project-name e.g., cloud-foundry
liberapay: # Replace with a single Liberapay username
issuehunt: # Replace with a single IssueHunt username
lfx_crowdfunding: # Replace with a single LFX Crowdfunding project-name e.g., cloud-foundry
polar: # Replace with a single Polar username
buy_me_a_coffee: # Replace with a single Buy Me a Coffee username
custom: # Replace with up to 4 custom sponsorship URLs e.g., ['link1', 'link2']
