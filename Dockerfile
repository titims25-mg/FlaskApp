# Utiliser une image officielle de Python
FROM python:3.11-slim

# Ajouter des métadonnées
LABEL Name="flask-app" \
    Version="1.0.0" \
    Description="Application Flask simple containerisée avec Docker." \
    Maintainer="Timothé Rajanelson <timothe.rajanelson@gmail.com>"

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers nécessaires dans le conteneur
COPY requirements.txt requirements.txt
COPY app.py app.py

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port sur lequel l'application écoute
EXPOSE 5000

# Définir la commande pour exécuter l'application
CMD ["python", "app.py"]