SELECT 
    (u.user_name) AS pessoa_usuaria,
    CASE
        WHEN YEAR(MAX(uh.played_timestamp)) >= 2021 THEN 'Ativa'
        WHEN YEAR(MAX(uh.played_timestamp)) < 2021 THEN 'Inativa'
    END AS status_pessoa_usuaria
FROM
    `user` u
        INNER JOIN
    user_history uh ON u.user_id = uh.user_id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;