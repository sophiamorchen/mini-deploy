-- =============================================
-- init.sql : structure de la base
-- Exécuté UNE fois : au premier démarrage (volume vide)
-- La base et l'utilisateur sont créés par le .env
-- =============================================

-- 1. RÉGLAGES
-- Les textes sont lus en utf8mb4 (accents, emojis)
-- SET NAMES utf8mb4 annonce à MariaDB que les textes envoyés sont en UTF-8.
-- Sans accord sur l'encodage, les accents peuvent être abîmés dans la base.
SET NAMES utf8mb4;

-- 2. TABLES INDÉPENDANTES
-- Tables qui ne pointent vers aucune autre table
CREATE TABLE IF NOT EXISTS message (
    id INT AUTO_INCREMENT PRIMARY KEY,
    texte VARCHAR(100) NOT NULL
);

-- 3. TABLES DÉPENDANTES
-- Tables qui pointent vers une table de la section 2
-- CREATE TABLE ...

-- 4. DONNÉES DE DÉPART
-- Données utiles en production (compte admin, catégories...)
-- INSERT INTO ...

-- 5. DONNÉES DE TEST
-- À supprimer avant la mise en production
INSERT INTO message (texte) VALUES ('Bonjour depuis MARIABD');