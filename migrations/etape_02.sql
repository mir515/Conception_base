CREATE TABLE categorie (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100)
);

INSERT INTO categorie (nom) VALUES
('Plat malagasy'),
('Plat chinois'),
('Soupe'),
('Dessert et goûter'),
('Boisson');

ALTER TABLE plat ADD COLUMN categorie_id INTEGER REFERENCES categorie(id);

UPDATE plat SET categorie_id = 1 WHERE nom IN ('Romazava', 'Ravitoto sy henakisoa', 'Akoho sy voanio');
UPDATE plat SET categorie_id = 2 WHERE nom = 'Mi sao';
UPDATE plat SET categorie_id = 3 WHERE nom = 'Soupe chinoise';
UPDATE plat SET categorie_id = 4 WHERE nom = 'Mofo gasy (les 4)';
UPDATE plat SET categorie_id = 5 WHERE nom = 'Ranon''ampango';
    