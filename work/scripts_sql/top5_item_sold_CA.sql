SELECT
  "Description" AS produit,
  SUM("TotalPrice") AS chiffre_affaires
FROM commandes
WHERE {{date}}
GROUP BY "Description"
ORDER BY chiffre_affaires DESC
LIMIT 5;
