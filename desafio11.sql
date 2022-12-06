SELECT
  s.song nome_musica,
CASE
  WHEN s.song LIKE '%Bard%' THEN REPLACE(s.song, 'Bard', 'QA')
  WHEN s.song LIKE '%Amar%' THEN REPLACE(s.song, 'Amar', 'Code Review')
  WHEN s.song LIKE '%Pais%' THEN REPLACE(s.song, 'Pais', 'Pull Requests')
  WHEN s.song LIKE '%SOUL%' THEN REPLACE(s.song, 'SOUL', 'CODE')
  WHEN s.song LIKE '%SUPERSTAR%' THEN REPLACE(s.song, 'SUPERSTAR', 'SUPERDEV')
END AS novo_nome
FROM songs s
WHERE s.song LIKE '%Bard%'
OR s.song LIKE '%Amar%'
OR s.song LIKE '%Pais%'
OR s.song LIKE '%SOUL%'
OR s.song LIKE '%SUPERSTAR%'
ORDER BY nome_musica DESC;