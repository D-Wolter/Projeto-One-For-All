SELECT
  s.song nome,
  COUNT(rh.song_id) reproducoes
FROM songs s
INNER JOIN history rh ON rh.song_id = s.song_id
INNER JOIN users u ON u.user_id = rh.user_id
INNER JOIN plans p ON p.plan_id = u.plan_id
WHERE p.plan_id = 1 OR p.plan_id = 4
GROUP BY nome
ORDER BY nome;