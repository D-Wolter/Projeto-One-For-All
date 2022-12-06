
SELECT
  u.user_name usuario,
  COUNT(rh.user_id) qt_de_musicas_ouvidas,
  ROUND(SUM(s.duration_seconds) / 60, 2) total_minutos
FROM history rh
INNER JOIN users u ON u.user_id = rh.user_id
INNER JOIN songs s ON s.song_id = rh.song_id
GROUP BY usuario
ORDER BY usuario;