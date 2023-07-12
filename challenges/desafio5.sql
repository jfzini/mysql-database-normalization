SELECT 
    s.song_title AS cancao,
    COUNT(user_id) AS reproducoes
FROM
    song s
        INNER JOIN
    user_history uh ON s.song_id = uh.song_id
GROUP BY uh.song_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;