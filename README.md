# SevTech Ages Docker Server

Ce dépôt contient un conteneur Docker pour exécuter un serveur Minecraft avec le modpack SevTech Ages. Il est conçu pour faciliter le déploiement et la gestion d'un serveur SevTech Ages.

## Table des matières
- [Installation](#installation)
- [Configuration](#configuration)
- [Utilisation](#utilisation)
- [Contribuer](#contribuer)
- [Licence](#licence)

## Installation

### Prérequis

- Docker installé sur votre machine. Si ce n'est pas déjà fait, vous pouvez le télécharger et l'installer depuis [le site officiel de Docker](https://www.docker.com/get-started).

### Construire l'image Docker

1. Clonez ce dépôt :
   ```bash
   git clone https://github.com/votre-utilisateur/sevtech-docker.git
   cd sevtech-docker
   ```

2. Construisez l'image Docker :
    ```bash
    docker build -t sevtech-server .
    ```
## Configuration

### Variables d'environnement et paramètres

Le serveur utilise des variables d'environnement pour certaines configurations, notamment l'acceptation de l'EULA et les paramètres de mémoire. Voici comment les définir :

- `MIN_RAM` : La quantité minimale de RAM allouée au serveur (par défaut : `1024M`).
- `MAX_RAM` : La quantité maximale de RAM allouée au serveur (par défaut : `4096M`).
- `JAVA_PARAMETERS` : Paramètres supplémentaires pour la JVM, tels que les options de ramassage des ordures et d'autres optimisations de la JVM.

Ces paramètres sont définis dans le fichier `settings.sh` et peuvent être modifiés selon vos besoins.

## Utilisation

### Démarrer le serveur

Pour démarrer le serveur Minecraft avec Docker, utilisez la commande suivante :

```bash
docker run -d -p 25565:25565 -v /path/to/local/data:/usr/src/minecraft --name my-sevtech-server sevtech-server
```

### Accéder aux journaux

Vous pouvez consulter les journaux du serveur pour vérifier qu'il fonctionne correctement avec la commande suivante :

```bash
docker logs -f my-sevtech-server
```
docker logs: Affiche les journaux d'un conteneur Docker.
-f: Suit les journaux en temps réel. Cette option permet de voir les nouvelles entrées de journal au fur et à mesure qu'elles sont écrites.
my-sevtech-server: Le nom ou l'ID du conteneur Docker dont vous souhaitez voir les journaux. Remplacez par le nom de votre conteneur si différent.
Utilisez cette commande pour diagnostiquer des problèmes potentiels ou simplement pour surveiller les activités du serveur, telles que les connexions des joueurs et les événements du serveur.

Cette section fournit les informations nécessaires pour accéder et suivre les journaux du serveur Minecraft, vous permettant ainsi de surveiller l'état du serveur et de diagnostiquer d'éventuels problèmes.


## Licence

Ce projet est sous licence [GPL-3.0](https://www.gnu.org/licenses/gpl-3.0.html).

La GNU General Public License v3.0 (GPL-3.0) est une licence de logiciel libre qui garantit aux utilisateurs la liberté d'utiliser, d'étudier, de partager et de modifier le logiciel. Cette licence impose des conditions strictes concernant la distribution de versions modifiées du logiciel, exigeant que ces modifications soient également sous licence GPL-3.0 et que le code source soit rendu disponible.

En utilisant, modifiant ou distribuant ce projet, vous acceptez les termes de la licence GPL-3.0. Pour plus de détails, veuillez consulter le fichier [LICENSE](LICENSE) ou la page officielle de la licence.

## Crédits

Le modpack **SevTech Ages** a été créé par [justinrusso](https://github.com/justinrusso) et est maintenu par plusieurs contributeurs talentueux. Vous pouvez trouver le dépôt original et la liste complète des contributeurs sur [GitHub](https://github.com/DarkPacks/SevTech-Ages/tree/master/original).

Nous remercions particulièrement justinrusso et tous les autres contributeurs pour leur travail acharné et leur dévouement à créer et maintenir ce modpack fantastique. Sans eux, ce projet ne serait pas possible.

Si vous appréciez leur travail, pensez à les soutenir et à suivre les mises à jour directement depuis leur dépôt.



