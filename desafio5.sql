SELECT
  s.song cancao,
  COUNT(rh.song_id) reproducoes
FROM
  songs s
INNER JOIN history rh ON s.song_id = rh.song_id
GROUP BY song
ORDER BY reproducoes DESC, song
LIMIT 2;