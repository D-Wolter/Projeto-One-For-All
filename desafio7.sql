SELECT
  a.artist artista,
  al.album album,
  COUNT(f.artist_id) seguidores
FROM albums al
INNER JOIN artists a ON a.artist_id = al.artist_id
INNER JOIN following f ON a.artist_id = f.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, a.artist, al.album;