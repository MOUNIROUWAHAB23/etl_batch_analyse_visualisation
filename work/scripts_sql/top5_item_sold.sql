SELECT
  commandes."Description" AS produit,
  SUM("Quantity") AS total_vendu
FROM commandes
WHERE {{date}}
GROUP BY "Description"
ORDER BY total_vendu DESC
LIMIT 5;
