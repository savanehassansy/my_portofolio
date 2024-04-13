# Utilisation d'une image légère Node.js
FROM node:alpine

WORKDIR /src/app

# Copie des fichiers de l'application dans le conteneur
COPY . .

# Installation d'un serveur web léger (par exemple, http-server)
RUN npm install -g http-server

# Exposition du port où le serveur web sera accessible
EXPOSE 8080

# Commande à exécuter lorsque le conteneur démarre
CMD ["http-server", "-p", "8080"]
