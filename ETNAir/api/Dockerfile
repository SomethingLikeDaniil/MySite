# Utiliser l'image Node.js
FROM node:18

# Définir le dossier de travail dans le conteneur
WORKDIR /usr/src/app

# Copier les fichiers nécessaires
COPY package*.json ./
COPY app.js ./

# Installer les dépendances
RUN npm install

# Exposer le port de l'API
EXPOSE 3000

# Lancer l'API
CMD ["node", "app.js"]