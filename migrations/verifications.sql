select * from plat order by prix DESC;

select categorie.nom, COUNT(*) from plat 
JOIN categorie ON plat.categorie_id = categorie.id GROUP BY categorie.nom;

SELECT 
    c.id AS commande_id,
    SUM(cd.quantite * p.prix) AS montant_total
FROM 
    commande c
JOIN 
    commande_detail cd ON c.id = cd.commande_id
JOIN 
    plat p ON cd.plat_id = p.id
GROUP BY 
    c.id;

SELECT 
    c.id AS commande_id,
    c.date,
   
   CASE
        WHEN cl.nom IS NULL THEN 'Client de passage'
        ELSE cl.nom
   END 
FROM 
    commande c
LEFT JOIN 
    client cl ON c.client_id = cl.id;

SELECT 
    s.nom AS serveur_nom,
    COUNT(DISTINCT c.id) AS nombre_commandes,
    SUM(cd.quantite * p.prix) AS chiffre_affaires
FROM 
    serveur s
LEFT JOIN 
    commande c ON s.id = c.serveur_id
LEFT JOIN 
    commande_detail cd ON c.id = cd.commande_id
LEFT JOIN 
    plat p ON cd.plat_id = p.id
GROUP BY 
    s.id, s.nom;