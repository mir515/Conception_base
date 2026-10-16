CREATE TABLE commande_detail (
    id SERIAL PRIMARY KEY,
    commande_id INTEGER REFERENCES commande(id),
    plat_id INTEGER REFERENCES plat(id),
    quantite INTEGER
);

CREATE TABLE commande (
   id SERIAL PRIMARY KEY,
   date DATE
);

insert into commande (date) values ('2026-10-16');

INSERT INTO commande_detail (commande_id, plat_id, quantite) VALUES (1, 1, 2);
INSERT INTO commande_detail (commande_id, plat_id, quantite) VALUES (1, 2, 1);

