#!/bin/sh

# Lire les paramètres
. ./settings.sh

# Vérification de l'EULA
if [ -f "eula.txt" ]; then
    if grep -q "eula=true" "eula.txt"; then
        echo "EULA accepted."
    else
        echo "You need to accept the EULA to proceed."
        echo "Edit the eula.txt file and change eula=false to eula=true."
        exit 1
    fi
else
    echo "eula=true" > eula.txt
    echo "EULA accepted automatically. Starting the server..."
fi

# Démarrer le serveur
start_server() {
    java -server -Xms${MIN_RAM} -Xmx${MAX_RAM} ${JAVA_PARAMETERS} -jar ${SERVER_JAR} nogui
}

echo "Starting SevTech Ages Server..."
start_server
