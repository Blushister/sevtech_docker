#!/bin/bash

# Vérifier si le fichier eula.txt existe et contient eula=true
if [ -f "eula.txt" ]; then
    if grep -q "eula=true" "eula.txt"; then
        echo "EULA accepted."
    else
        echo "EULA has not been accepted. Please accept the EULA to proceed."
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
else
    echo "eula.txt not found."
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

# Démarrer le serveur
java -Xmx4G -Xms4G -jar forge-1.12.2-14.23.5.2860-universal.jar nogui
