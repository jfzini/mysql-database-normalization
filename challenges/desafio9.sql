-- Crie uma QUERY que exibe a quantidade de músicas que estão presentes atualmente no histórico de reprodução de uma pessoa usuária específica. Para este caso queremos saber quantas músicas estão no histórico da usuária "Barbara Liskov" e a consulta deve retornar a seguinte coluna:
-- O valor da quantidade, com o alias "musicas_no_historico".

SELECT 
    COUNT(uh.song_id) AS musicas_no_historico
FROM
    `user` u
        INNER JOIN
    user_history uh ON uh.user_id = u.user_id
WHERE
    u.user_name = 'Barbara Liskov';