SELECT 
	m.musica cancao, COUNT(h.musica_id) reproducoes
FROM
  SpotifyClone.musica m
INNER JOIN SpotifyClone.historico h ON m.musica_id = h.musica_id
GROUP BY musica
ORDER BY reproducoes DESC, musica
LIMIT 2;
