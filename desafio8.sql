SELECT
  a.artist artista,
  al.album album
FROM artists a
INNER JOIN albums al ON a.artist_id = al.artist_id
WHERE a.artist LIKE "Elis Regina";