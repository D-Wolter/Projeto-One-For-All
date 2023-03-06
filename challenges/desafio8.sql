SELECT
  a.artista artista,
  al.album album
FROM artista a
INNER JOIN album al ON a.artista_id = al.artista_id
WHERE a.artista LIKE "Elis Regina";