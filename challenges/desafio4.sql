SELECT 
    (u.user_name) AS pessoa_usuaria,
    IF(YEAR(MAX(uh.played_timestamp)) >= 2021,
        'Ativa',
        'Inativa') AS status_pessoa_usuaria
FROM
    `user` u
        INNER JOIN
    user_history uh ON u.user_id = uh.user_id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;