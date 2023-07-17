-- Crie uma QUERY que deverá ter apenas três colunas:
-- A primeira coluna deve possuir o alias "pessoa_usuaria" e exibir o nome da pessoa usuária.
-- A segunda coluna deve possuir o alias "musicas_ouvidas" e exibir a quantidade de músicas ouvida pela pessoa com base no seu histórico de reprodução.
-- A terceira coluna deve possuir o alias "total_minutos" e exibir a soma dos minutos ouvidos pela pessoa usuária com base no seu histórico de reprodução.
-- Os resultados devem estar agrupados pelo nome da pessoa usuária e ordenados em ordem alfabética.

SELECT 
    u.user_name AS pessoa_usuaria,
    COUNT(s.song_title) AS musicas_ouvidas,
    ROUND(SUM(s.duration) / 60, 2) AS total_minutos
FROM
    `user` u
        INNER JOIN
    user_history uh ON uh.user_id = u.user_id
        INNER JOIN
    song s ON s.song_id = uh.song_id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;