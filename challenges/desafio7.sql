SELECT
  a.artista artista,
  al.album album,
  COUNT(f.artista_id) pessoas_seguidoras
FROM album al
INNER JOIN artista a ON a.artista_id = al.artista_id
INNER JOIN seguindo f ON a.artista_id = f.artista_id
GROUP BY artista, album
ORDER BY pessoas_seguidoras DESC, a.artista, al.album;