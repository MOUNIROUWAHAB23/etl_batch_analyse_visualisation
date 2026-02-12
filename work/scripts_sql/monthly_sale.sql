SELECT
  DATE_TRUNC('month', "InvoiceDate"::timestamp) AS mois,
  SUM("TotalPrice") AS chiffre_affaires
FROM commandes
WHERE {{date}}
GROUP BY mois
ORDER BY mois;
