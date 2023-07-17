-- Crie uma QUERY que deve mostrar as pessoas usuárias que estavam ativas a partir do ano de 2021, se baseando na data mais recente no histórico de reprodução.
-- A primeira coluna deve possuir o alias "pessoa_usuaria" e exibir o nome da pessoa usuária.
-- A segunda coluna deve ter o alias "status_pessoa_usuaria" e exibir se a pessoa usuária está ativa ou inativa.
-- O resultado deve estar ordenado em ordem alfabética.

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