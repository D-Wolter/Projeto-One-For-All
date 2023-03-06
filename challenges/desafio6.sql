SELECT
  MIN(p.plano_preco) faturamento_minimo,
  MAX(p.plano_preco) faturamento_maximo,
  ROUND(AVG(p.plano_preco), 2) faturamento_medio,
  SUM(p.plano_preco) faturamento_total
FROM
  plano p
INNER JOIN usuario u ON p.plano_id = u.plano_id;