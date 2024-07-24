# Utiliser une image de base Java
FROM openjdk:8-jre

# Définir le répertoire de travail
WORKDIR /usr/src/minecraft

# Copier les fichiers de configuration et le modpack
COPY . .

# Donner les permissions d'exécution aux scripts
RUN chmod +x Install.sh ServerStart.sh

# Exécuter le script d'installation pour installer Forge et autres composants
RUN ./Install.sh

# Exposer le port 25565 (par défaut pour Minecraft)
EXPOSE 25565

# Utiliser ServerStart.sh pour démarrer le serveur
ENTRYPOINT ["./ServerStart.sh"]
