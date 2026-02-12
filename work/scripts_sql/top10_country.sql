SELECT
  "Country" AS pays,
  SUM("TotalPrice") AS chiffre_affaires
FROM
  commandes
WHERE
  {{date}}
GROUP BY
  "Country"
ORDER BY
  chiffre_affaires DESC
LIMIT
  10;