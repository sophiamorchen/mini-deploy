FROM php:8.5-apache

# Installe l'extension PDO Mysql (outil fourni par l'image officielle)
RUN docker-php-ext-install pdo_mysql

# Copie la page dans le dossier qu'Apache affiche par défaut 
COPY index.php /var/www/html/