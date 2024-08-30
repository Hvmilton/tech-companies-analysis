SELECT
  country,
  COUNT(*) AS company_count,
  AVG(CAST("Market Cap" AS DOUBLE)) AS avg_market_cap
FROM {{ source('tech_companies_source', 'tech_companies') }}
WHERE country = 'United States'
GROUP BY country