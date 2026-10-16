CREATE TABLE serveur (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

CREATE TABLE table_salle (
    id SERIAL PRIMARY KEY,
    numero INTEGER NOT NULL UNIQUE
);

INSERT INTO serveur (nom) VALUES 
('Njaka Rakoto'), 
('Lalao Rasoa');

INSERT INTO table_salle (numero) VALUES 
(1), (2), (3), (4), (5), (6), (7), (8);

ALTER TABLE commande ADD COLUMN serveur_id INTEGER REFERENCES serveur(id);
ALTER TABLE commande ADD COLUMN table_id INTEGER REFERENCES table_salle(id);

UPDATE commande SET serveur_id = 1 WHERE id = 1;