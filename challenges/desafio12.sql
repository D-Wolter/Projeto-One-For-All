SELECT
    ar.artista artista,
    CASE
        WHEN COUNT(c.musica_id) >= 5 THEN 'A'
        WHEN COUNT(c.musica_id) >= 3 THEN 'B'
        WHEN COUNT(c.musica_id) >= 1 THEN 'C'
        ELSE '-'
    END AS ranking
FROM artista ar
INNER JOIN album al ON al.artista_id = ar.artista_id
INNER JOIN musica m ON m.album_id = al.album_id
LEFT JOIN cancoes_favoritas c ON c.musica_id = m.musica_id
GROUP BY ar.artista
ORDER BY COUNT(c.musica_id) DESC , artista;