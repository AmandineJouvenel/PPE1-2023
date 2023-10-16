# Journal d'Amandine

## Séance 1

### Philosophie derrière Unix

Unix est l’ancêtre de tous les systèmes d’exploitation et a posé les bases de l'organisation du système d’exploitation qui fait fonctionner la machine.
Dans Unix, tout est fichier !

### Découverte des chemins d'acès

Un chemin est une suite de noms de dossiers séparés par des slashs (/) et commence par un slash. Il peut se finir par un nom de dossier ou un nom de fichier.

Il existe des chemins particuliers :
- / : racine de l’arbre
- ~/ : dossier personnel de l’utilisateur (“HOME”)
- ./ : dossier courant (working directory)
- ../ : dossier parent

### Chemins absolus vs. chemins relatifs

Pour trouver un fichier, on peut utiliser un chemin relatif ou un chemin absolu. Un chemin absolu part de la racine de l'arbre et ne dépend pas du contexte. A l'inverse, un chemin relatif, comme son nom l'indique, dépend de l'endroit où on se trouve.

- Découverte des principales commandes et de leur syntaxe
- Création d'une arborescence de fichiers pour se familiariser avec les commandes (mkdir, cd, cp, mv)

### Syntaxe des commandes

Une commande a la forme suivante : nom [-options…] [arguments…]
Nous avons vu quelques commandes assez fréquentes : cd, ls, pwd, cat, less, head, tail, man, mkdir, cp, mv, rm, file, cut.

### Git et Github

Git est un système de gestion de versions de manière décentralisée. Github est un service web permettant des fonctionnalités supplémentaires par rapport à Git seul, comme la collaboration.

### Exercices pour s'entraîner avec les commandes

A partir d'un dossier de fichiers, j'ai créé une arborescence en fonction du type de fichiers, puis de l'année, puis du mois.
Pour réaliser cet exercice, j'ai utilisé les commandes cd, cp, mkdir, et rm.


## Séance 2

### Synchronisation entre l'interface web github et l'ordinateur

Afin de synchroniser notre dépôt Github entre l'interface web et l'ordinateur de manière sécurisée, nous avons créé 2 clés : une clé publique et une clé privée.

Puis, nous avons lié notre dépôt de travail à notre compte Github avec les commandes suivantes :

git config user.name “USER”
git config user.email “EMAIL”

### Commandes git

Nous avons découvert plusieurs commandes git fréquentes : git add, git status, git commit, git push, git fetch, git pull, git rm, et git log.

### Récupérer des fichiers depuis Github sur notre PC :

cd location # on se place dans le fichier de destination
git fetch # on récupère le journal des modifications
git status # on regarde l'état du dépôt
git pull # on récupère les changements depuis le dépôt distant

### ðéposer des fichiers depuis notre PC sur notre espace Github :

git add mes_fichiers # on ajoute les fichiers qu'on veut mettre sur Github
git commit -m "message" # on valide les modifications des fichiers
git push # on pousse l'ensemble des commits sur le dépôt distant

### Les étiquettes

Les étiquettes, ou tags, permettent de se souvenir d'un état précis du dépôt. Pour tager un commit, on effectue les commandes suivantes :

  git tag -a tagname -m "message"
  git push origin tagname


## Séance 3

### Corriger des erreurs en git

Pour corriger des erreurs, nous pouvons utiliser les commandes git reset ou git reverse.

#### Pour défaire des commits non poussés, on utilise git reset.

- git reset HEAD~ permet de revenir à la dernière version du dépôt en annulant la mise en place.
- git reset --soft HEAD~ permet de revenir à la dernière version du dépôt sans annuler la mise en place.
- git reset --hard permet de revenir à la version HEAD --> assez radical
- git reset \<commit\> permet de revenir à un commit spécifique

#### Pour défaire des commits déjà poussés, on utilise git revert.

dans la commande "git revert \<commit\>", \<commit\> peut être soit l'identifiant SHA du commit (que l'on peut récupérer en faisant git log), soit un tag.

### Exercices de correction d'erreurs

Pour cloturer la séance, nous avons effctué des exercices pour la séance suivante.
Formulation des exercices pas très claire...


## Séance 4

### Correction des exercices sur la rectification des erreurs

### Découverte des pipelines

Les pipelines servent à concaténer plusieurs commandes, cela crée une sorte de chaîne de traitement, puisque chaque commande prend la sortie de la commande qui la précède.

### Flux d'entrée et de sortie

Nous avons commencé à appréhender les flux d'entrée et de sortie (stdin, stdout). Nous avons également vu comment rediriger les résultats vers un fichier à l'aide des commandes suivantes :
- > pour enregistrer les sorties dans un fichier en écrasant les données si le fichier existe dejà
- >> pour ajouter la sortie à la fin d'un fichier déjà existant

### Exercices d'application sur les fichiers .ann

Nous avons effectué des exercices pour appliquer les connaissances que nous avons vu précédemment.

### Découverte des scripts

La commande bash permet d'interpréter des commandes à partir d'un script.
La commande chmod +x permet de rendre le fichier exécutable.

### Exercices pour la séance 5

- Exercice sur les fichiers *.ann : pas de difficulté particulière
- Premier script : pas de difficulté particulière
- Exercice 1 : difficulté de compréhension de la première consigne
- Exercice 2 : difficulté à trouver comment accepter * pour l’année et le mois
