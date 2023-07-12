SELECT 
    COUNT(uh.song_id) AS musicas_no_historico
FROM
    `user` u
        INNER JOIN
    user_history uh ON uh.user_id = u.user_id
WHERE
    u.user_name = 'Barbara Liskov';