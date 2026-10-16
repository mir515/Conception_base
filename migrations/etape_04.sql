CREATE TABLE client (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100)
);

ALTER TABLE commande ADD COLUMN client_id INTEGER REFERENCES client(id);

INSERT INTO client (nom) VALUES
('Cristiano'),
('Mirado');

UPDATE commande SET client_id = 1 WHERE id = 1;
