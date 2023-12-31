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


## Séance 5

### Correction des exercices

### Instructions de contrôle

Les instructions de contrôle permettent d'effectuer des traitements selon certaines conditions.
Nous avons vu l'instruction if qui peut porter sur des chemins, des chaînes de caractères, ou des entiers.
Un des intérêts de if est de vérifier si l'utilisateur a bien entré les arguments nécessaires au traitement.

### Boucles for et while

Les boucles for permettent de répéter des actions en itérant sur une variable. Ce la a pour intérêt de raccourcir le code.
Les boucles while permettent de répéter des actions en itérant sur une variable tant qu'une condition est vérifiée.

### HTML

HTML est un langage de balisage pour représenter des pages web.

Dialogue avec Internet :
1. URL (Utilisateur > Navigateur)
2. Requête HTTP (Navigateur > Serveur Web)
3. HTTP Response (Serveur Web > Navigateur)
4. Webpage (Navigateur > Utilisateur)

Nomenclature des codes HTTP :
- 1xx : information
- 200 : réussite
- 3xx : redirections
- 4xx : erreurs du client
- 5xx : erreurs du serveur

### Lynx

Lynx est un navigateur web en terminal.
Nous avons vu 2 options intéressantes de Lynx :
- -dump : permet de récupérer le contenu textuel d’une page pour l’afficher
- -nolist : permet de retirer la liste des liens d’une page à l’affichage

### wget et cURL

wget et cURL sont deux commandes permettant de récupérer des pages web sans passer par un navigateur.
Pour lancer la commande curl : curl <URL>

Nous avons vu quelques options utiles de curl :
- -i : informations sur l’interaction avec le serveur
- -L : suit les redirections
- -o <fichier> : indique un fichier de sortie

### Travail pour la séance 6

Modifier vos programmes pour qu’ils valident leurs arguments et se terminent s'il y a un problème
--> même difficulté que la semaine dernière, je n'arrive pas à faire accepter l'étoile pour l'année et le mois dans l'exercice 2


## Séance 6

### Point sur le projet

Pour notre projet, nous devrons homogénéiser les encodages des pages web récoltées. On privilégiera l'UTF-8.
Deux paramètres importants pour le traitement des données concernent le choix du mot et la sélection du corpus.
Nous devrons expliquer pourquoi nous avons choisi ce mot, qu’est-ce qu’on pense trouver, quelle est notre hypothèse de départ.
On privilégiera les pages non payantes, non réservées aux abonnés (pour la presse), et on naviguera en navigation privée pour ne pas être gênés par les cookies.

### Début du mini projet : commencer la récolte des données préparées

L'objectif de cette séance est de voir les différentes étapes du projet individuellement, en  démarrant d’une liste d’URLs déjà faite.

### Allure générale du travail de récolte

La première étape de la récolte consiste à lire des fichiers de données en entrée.
La deuxième étape consiste, pour chacun des fichiers d’URLs, à les lire ligne par ligne, vérifier si l’URL a l’air correcte, si la requête réussit, et à détecter l’encodage.

### Construction du script :

On commence par récupérer des URLs contenues dans un fichier texte. Puis, on écrit les premières colonnes du tableau, en ajoutant des colonnes au fur et à mesure. L'objectif est de transformer le tout en page web. Pour commencer, on prend un seul argument : le fichier d’URLs.

### Exercice 1 : lire les lignes d’un fichier en bash

A partir d'un script qui lit un fichier ligne par ligne, nous avons transformé le fichier d'entrée en paramètre du script en créant une variable "fichier qui correspond au premier argument ("$1").

On s'est ensuite assuré que l'on donne bien un argument au scrpt en utilisant une boucle if suivant la logique suivante : si l'argument est vide (if [ -z "$1" ]), on affiche un message d'erreur (echo "Il faut entrer un fichier d'URLs"), sinon on exécute le programme.

Puis, on a affiché le numéro de ligne avant chaque URL en créant une nouvelle variable "lineno" (initialisée à 0), que l'on incrémente de 1 à chaque ligne dans notre boucle while (lineno=$(expr $lineno + 1), et que l'on affiche avant la ligne (echo ${lineno} ${line}).

Enfin, on a séparé les valeurs par des tabulations, en utilisant l'option -e de echo et en utilisant "\t" pour les tabulations (echo -e ${lineno} "\t" ${line}).

### Exercice 2 : récupérer les métadonnées de collecte

Après l’exercice 1 fait, on a rajouté des informations à chaque ligne, toujours séparées par des tabulations :
- le code HTTP de réponse à la requête (en corrigeant les erreurs si besoin)
- l’encodage de la page, s’il est présent


## Séance 7

### Correction de l'exercice 2

### Objectifs de la séance

Lors de cette séance, nous avons appris à transformer un fichier tabulaire en tableau HTML. C'est ce qu'on fera pour le projet.

### HTML

HTML est un langage de balisage qui représente les pages web et est reconnu par tous les navigateurs. L'idée est de structurer les informations d'une page web pour les rendre affichable. Concrètement, HTML, c'est des boîtes dans des boîtes, dans des boîtes, etc. Ce sont des imbrications, mais SANS ENCHASSEMENTS !! Cela ressemble un peu à la structure des constituants syntaxiques.

### Le balisage

On marque des zones dans un document à l'aide de balises ouvrantes, fermantes, ou autofermantes (ou vides). On peut rajouter des attributs (ensembles de clés-valeurs), par exemple <DET G="M" N="S"> où la balise DET possède 2 arguments (genre et nombre).
HTML reprend la construction globale du balisage, mais a sa propre syntaxe. Une balise html recouvre tout le document, la balise head contient les métadonnées, et la balise body contient le contenu textuel du document. Dans l'entête, on met l'encodage.

### HTML : créer un tableau

La balise principale d'un tableau est table. On a aussi besoin des balises tr (ligne), th (cellule d'entête), et td (cellule classique).

### Exercice : transformer la sortie tabulaire en HTML

On redirige la sortie du programme miniprojet.sh vers un fichier de sortie, en effectuant quelques modifications pour ajouter les balises. On récupère le contenu du fichier de sortie que l'on copie-colle dans notre fichier tableau-fr.html.

### Exercices : Candide

1) Nettoyage du fichier avec grep -o -E '\w+' | tr '[:upper:]' '[:lower:]' | tr -d '[:punct:]'
2) Mots les plus fréquents avec cat ./fichier_nettoye.txt | sort | uniq -c | sort -nr | head -n $nb_mots
3) Bigrammes les plus fréquents avec paste <(head -n -1 fichier_nettoye_bigrammes.txt) <(tail -n +2 fichier_nettoye_bigrammes.txt) > bigrammes.txt


## Séance 8

### Correction des exercices supplémentaires

- prepa_fichier.sh
- frequence_mots.sh
- frequence_bigrammes.sh

### Correction de l'exercice de création d'un tableau html dans miniprojet

- miniprojet.sh
- tableau-fr.html

### Les pages GitHub

Les pages github permettent de créer et déployer un site web moé à un dépôt git. C'est une solution simple qui permet de créer des sites statiques. C'est sous cette forme qu'on rendra notre projet de groupe. Nous avons ensuité créé notre dépôt.

### CSS

Le CSS permet de modifier les éléments de style d'une page HTML.
On peut modifier le style d'une balise en y intégrant directement du CSS via l'attribut style.
On peut aussi ajouter des balises style entre lesquelles on donne les propriétés graphiques des éléments en fonction de leur type. Cela permet de ne pas préciser à chaque fois et de généraliser un style à tous les éléments de telle ou telle type de balise.
Dernière façon de faire : créer un fichier CSS à part, ajouter dans le document html une balise link qui indique qu'on applique le style contenu dans le fichier CSS.
On peut également appliquer des styles en fonction de la classe des balises.

Dans le cadre de notre projet, on utilisera des bibliothèques déjà existantes, comme bulma.

### Notions principales

Il faudra faire attention à 2 types de classes :
- les classes de base (colonnes, titres...)
- les modifieurs (classes dont le nom commence par is- ou has-)

### Exercices pour la prochaine séance

- Créer une page d’accueil (index) qui utilise le style Bulma contenant une présentation rapide du mini-projet et le lien vers la page HTML qui contient le tableau de résultats
- modifier le css du tableau pour avoir un résultat plus joli

Lien de la page d'accueil : https://amandinejouvenel.github.io/PPE1-2023/


## Séance 9

### Attendus de la séance d'aujourd'hui

On va commencer par préparer les textes. On va s'assurer qu'on peut bien communiquer avec les URLs pour le projet. Puis, on récupère les pages HTML et le contenu textuel de ces pages, à l'aide de ce qu'on a fait aux séances précédentes.
Etape suivante : gérer l'encodage. Il faut normaliser nos textes en UTF-8.
Une fois nos textes prétraités, on compte les occurrences de chaque mot dans chaque page web et idem pour les bigrammes. On va aussi commencer à récupérer les contextes de notre mot en récupérant des lignes autour de notre mot. On va faire un concordancier pour regarder l'usage de notre mot.

### Le rendu

Le rendu sera en groupe : au minimum un rendu par groupe. On crée une page d'acceuil du projet liée aux tableaux enrichis par rapport à ce qu'on a fait dans le mini-projet. On vérifie que les liens marchent bien sur internet (et pas uniquement sur notre ordinateur). On va avoir des problèmes. Stratégie : toujours pull avant commit et push !
Puis on commit et on tag projet1. Il faut indiquer le lien vers le tage et les membres de notre groupe.


## Séance 10

### Point textométrie avec iTrameur

Le trameur est un logisciel de textométrie : analyse automatique et statistique de textes en vue de leur analyse. Ces résultats servent à montrer des choses notables dans les textes car elles apparaissent très fréquemment ou très peu fréquemment (résultats statistiques). iTrameur permet une pproche quantitative (qui sert une approche qualitative).

### iTrameur pour comparer

On compare des documents, et plus généralement des données textuelles qui ont une certaine structure. On doit donner un pseudo-XML à iTrameur, pour représenter les différentes parties. Partie principale = dump = une section de notre document.
On peut faire le calcul des spécificités pour savoir si un mot est spécifique à une partie spécifique (auteur, année, etc.). Si on veut savoir quels sont les mots les plus associés à notre mot étudié, on peut faire le calcul des spécificités.

### Spécificité et loi hypergéométrique

Il faut prendre en compte la fréquence relative (nombre d'occurrences par rapport à la taille de la partie) ! Pour avoir cet indice de spécificité, on va calculer la probabilité de trouver une distribution d'un mot de 50% en plus ou en moins dans une partie par rapport à une autre.
La loi hypergéométrique, c'est la loi normale mais décalée d'un côté ou de l'autre. Cela permet de comparer les proportions dans 2 échantillons d'un corpus. Elle prend en comtpe le nombre d'occurrences du mot dans le corpus, le nombre d'occurrences du mot dans la partie étudiée, la fréquence du mot dans le corpus, et la fréquence du mot dans la partie étudiée.
Cela permet de prendre en compte le hasard dans notre corpu et donne une spécificité.

Spécificité = indice d'un emploi atypique d'une forme dans une partie du corpus (négatif pour un sous-emploi ou positif pour un sur-emploi).
La spécificité est donnée en log10 et donne donc un ordre de grandeur de la probabilité. Plus la spécificité est grande, plus la probabilité est faible. On peut utiliser cette mesure pour mesure le fait qu'un mot apparaisse plus ou moins dans une partie ou dans le contexte d'un mot.

### Comparer les unités textuelles

iTrameur se base sur des comptages de mots. Le choix du découpage des mots est très important car il impacte les calculs (ex : damelo vs. donne-le moi --> combien de mots ?).


## Séance 11

### Environnement python

Pendant cette séance, nous avons installé un environnement python dans notre dossier PPE (avec la commande 'python3 -m venv path/to/venv'). Nous avons ensuite installé thulac pour la tokenisation du chinois. Mais on peut également utiliser le programme python tokenise_chinese fourni par les profs. On place le script tokenise_chinese dans notre dossier 'programmes' du projet.

### Contourner les problèmes d'iTrameur

iTrameur ne prend pas en compte les regex, ce qui va poser des problèmes dnas l'naalyse des cooccurrents de notre mot. Pour contourner ce problème, on va utiliser un script python : cooccurrents.py, qui recrée des tableaux de cooccurrents comme dans iTrameur. On lui donne une liste de fichiers en entrée et on lui donne l'option obligatoire target pour dire quel mot nous intéresse.

Commande pour lancer le script : ./cooccurrents.py /chemin/vers/fr-1.txt --target "robots?" -s i --match-mode regex

fr-1.txt : fichier dans lequel on veut chercher, mais dans notre cas c'est une liste de fichiers !
--target "robots?" : notre cible
-s i : permet de rendre insensible à la casse.
--match-mode regex : permet de dire au script qu'on va chercher une regex.
-t itrameur : optionnel, pour préciser si on veut des résultats comparables à itrameur

### Nuages de mots avec wordcloud

wordcloud permet d'obtenir les nuages de mots pour notre analyse. Attention, pour le chinois, il faut mettre une font dans laquelle les caractères chinois existent ! Pour cela, on lui indique le chemin vers la font appropriée.
