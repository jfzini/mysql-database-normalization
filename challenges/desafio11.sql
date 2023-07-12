SELECT 
    a.album_title AS album, COUNT(uf.song_id) AS favoritadas
FROM
    song s
        INNER JOIN
    user_favorites uf ON s.song_id = uf.song_id
        INNER JOIN
    album a ON s.album_id = a.album_id
GROUP BY a.album_title
ORDER BY favoritadas DESC , album
LIMIT 3;