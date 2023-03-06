SELECT
  u.usuario_nome,
  COUNT(h.usuario_id) musicas_ouvidas,
  ROUND(SUM(m.duracao_em_segundos) / 60, 2) total_minutos
FROM historico h
INNER JOIN usuario u ON u.usuario_id = h.usuario_id
INNER JOIN musica m ON m.musica_id = h.musica_id
GROUP BY usuario_nome
ORDER BY usuario_nome;