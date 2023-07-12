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