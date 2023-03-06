SELECT
  al.album album,
  COUNT(m.musica_id) favoritadas
FROM album al
INNER JOIN musica m ON m.album_id = al.album_id
INNER JOIN cancoes_favoritas c ON c.musica_id = m.musica_id
GROUP BY album
ORDER BY favoritadas DESC, al.album ASC
LIMIT 3;