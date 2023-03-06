SELECT
    CASE
        WHEN u.idade <= 30 THEN 'Até 30 anos'
        WHEN u.idade <= 60 THEN 'Entre 31 e 60 anos'
        ELSE 'Maior de 60 anos'
    END AS faixa_etaria,
    COUNT(DISTINCT u.usuario_id) total_pessoas_usuarias,
    COUNT(c.usuario_id) total_favoritadas
FROM usuario u LEFT JOIN cancoes_favoritas c ON c.usuario_id = u.usuario_id
GROUP BY faixa_etaria
ORDER BY faixa_etaria;