select * from plat order by prix DESC;
select categorie.nom, COUNT(*) from plat 
JOIN categorie ON plat.categorie_id = categorie.id GROUP BY categorie.nom;