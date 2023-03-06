SELECT
  COUNT(u.usuario_nome) musicas_no_historico
FROM historico rh
INNER JOIN usuario u 
ON u.usuario_id = rh.usuario_id
WHERE u.usuario_nome = "Barbara Liskov";
