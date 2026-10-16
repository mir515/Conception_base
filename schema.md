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
