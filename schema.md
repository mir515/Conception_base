# Conception base relationnelle

# Niveau 1

## Etape 1

plat ( id, plat, prix)

## Piège

- BIGINT est le type du prix car il faut utiliser des entiers .

- Identifiant id et de type SERIAL avec une contrainte PRIMARY KEY .

## Etape 2

- plat (id, plat , prix , categorie_id)

- categorie (id, nom)

## Piege

- on n'ajoute pas une colonne categorie VARCHAR(50)
car a chaque fois qu'on doit modifier une categorie ,on doit modifie chaque ligne ayant le meme categorie 

## Etape 3

- commande ( id, date)

- commande_detail ( id , commande_id, plat_id , quantite)

## Piege

- La quantite est placé dans commande_detail

## Etape 4

- client( id ,nom)
- commande ( id ,date , client_id)

## Piege

- Aucune contrainte NOT NULL n'a été spécifiée. La colonne accepte donc des valeurs NULL, ce qui est indispensable pour laisser les commandes des clients de passage sans client attitré.
Il faut utiliser un LEFT JOIN .Le LEFT JOIN permet de conserver toutes les lignes de la table commande, qu'elles soient rattachées à un client ou non.

## Etape 5
 - serveur( id , nom)
 - table_salle (id ,numero)
 - commande (id ,date , client_id , serveur_id , table_id)

## Piege
- Ce sont deux entités indépendantes. Une commande peut avoir lieu sur une table (si les clients mangent sur place), mais elle peut aussi n'avoir aucune table associée (dans le cas d'une commande à emporter où la colonne table_id sera simplement NULL). À l'inverse, une table physique peut accueillir plusieurs commandes successives au cours de la journée.

- Le mot TABLE est un mot-clé réservé du langage SQL.
Il est utilisé en permanence par le système de gestion de base de données pour définir la structure du langage