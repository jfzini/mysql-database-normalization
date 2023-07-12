SELECT 
    CASE
        WHEN u.age <= 30 THEN 'Até 30 anos'
        WHEN u.age BETWEEN 31 AND 60 THEN 'Entre 31 e 60 anos'
        ELSE 'Maior de 60 anos'
    END AS faixa_etaria,
    COUNT(DISTINCT u.user_id) AS total_pessoas_usuarias,
    COUNT(uf.song_id) AS total_favoritadas
FROM
    user_favorites uf
        RIGHT JOIN
    `user` u ON uf.user_id = u.user_id
GROUP BY faixa_etaria
ORDER BY CASE
    WHEN faixa_etaria = 'Até 30 anos' THEN 1
    WHEN faixa_etaria = 'Entre 31 e 60 anos' THEN 2
    WHEN faixa_etaria = 'Maior de 60 anos' THEN 3
END ASC;