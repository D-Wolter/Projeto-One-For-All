SELECT
  COUNT(u.user_name) quantidade_musicas_no_historico
FROM history rh
INNER JOIN users u ON u.user_id = rh.user_id
WHERE u.user_name = "Barbara Liskov";