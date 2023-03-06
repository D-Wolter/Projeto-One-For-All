SELECT 
	DISTINCT u.usuario_nome pessoa_usuaria,
	IF(YEAR(MAX(data_reproducao)) >= 2021,'Ativa','Inativa') status_pessoa_usuaria
FROM
  SpotifyClone.usuario u
INNER JOIN SpotifyClone.historico h ON u.usuario_id = h.usuario_id
GROUP BY usuario_nome
ORDER BY usuario_nome;