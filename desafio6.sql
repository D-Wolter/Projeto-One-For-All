SELECT
  MIN(p.plan_price) faturamento_minimo,
  MAX(p.plan_price) faturamento_maximo,
  ROUND(AVG(p.plan_price), 2) faturamento_medio,
  SUM(p.plan_price) faturamento_total
FROM
  plans p
INNER JOIN users u ON p.plan_id = u.plan_id;