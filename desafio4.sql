SELECT 
	DISTINCT u.user_name usuario,
	IF(YEAR(MAX(reproduction_date)) >= 2021,'Usuário ativo','Usuário inativo') status_usuario
FROM
  users u
INNER JOIN history rh ON u.user_id = rh.user_id
GROUP BY usuario
ORDER BY usuario;