#!/bin/sh

# Lire les paramètres
. ./settings.sh

# Vérification de l'EULA
check_eula() {
    if [ -f "eula.txt" ]; then
        if grep -q "eula=true" "eula.txt"; then
            echo "EULA accepted."
        else
            echo "You need to accept the EULA to proceed."
            echo "Edit the eula.txt file and change eula=false to eula=true."
            exit 1
        fi
    else
        echo "eula.txt not found."
        echo "By running this script, you agree to the Minecraft EULA."
        echo "You must accept the EULA to proceed."
        echo "Do you accept the EULA? (yes/no)"
        read -r ACCEPT_EULA

        if [ "$ACCEPT_EULA" = "yes" ]; then
            echo "eula=true" > eula.txt
            echo "EULA accepted. Starting the server..."
        else
            echo "EULA not accepted. Exiting."
            exit 1
        fi
    fi
}

# Démarrer le serveur
start_server() {
    java -server -Xms${MIN_RAM} -Xmx${MAX_RAM} ${JAVA_PARAMETERS} -jar ${SERVER_JAR} nogui
}

echo "Starting SevTech Ages Server..."
check_eula
start_server
