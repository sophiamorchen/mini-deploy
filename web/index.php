<?php 
// Nom du service MariaDB dans le docker-compose.yml (pas "localhost")
$hote = 'db';
// Nom de la abse, lu depuis .env
$base = getenv('MARIADB_DATABASE');
// Urtilisateur normal, lu depuis .env
$utilisateur = getenv('MARIADB_USER');
// Son mot de passe, lu depuis .env
$motDePasse = getenv('MARIADB_PASSWORD');

try { 
    //Ouvre la connection à MARIADB avec PDO (encodage utfmb4 pour les accents)
    $pdo = new PDO("mysql:host=$hote;dbname=$base;charset=utf8mb4", $utilisateur, $motDePasse);
    //Lit le texte de la première ligne de la table message
    $texte = $pdo->query('SELECT texte FROM message LIMIT 1')->fetchColumn();
    // Affiche le texte (htmlspecialchars protège contre le code HTML caché)
    echo htmlspecialchars($texte);
} catch (PDOException $e) {
    // Si la connexion ou la requête échoue, affiche la raison
    echo 'Erreur : ' . htmlspecialchars($e->getMessage());
}