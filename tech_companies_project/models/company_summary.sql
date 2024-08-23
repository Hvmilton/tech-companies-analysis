SELECT
  industry,
  COUNT(*) AS company_count,
  AVG(market_cap) AS avg_market_cap
FROM {{ ref('tech_companies') }}
GROUP BY industry