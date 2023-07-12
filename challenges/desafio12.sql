SELECT 
    ar.artist_name AS artista,
    CASE
        WHEN COUNT(al.artist_id) >= 5 THEN 'A'
        WHEN COUNT(al.artist_id) IN (3 , 4) THEN 'B'
        WHEN COUNT(al.artist_id) IN (1 , 2) THEN 'C'
        ELSE '-'
    END AS ranking
FROM
    user_favorites uf
        INNER JOIN
    song s ON s.song_id = uf.song_id
        INNER JOIN
    album al ON s.album_id = al.album_id
        RIGHT JOIN
    artist ar ON ar.artist_id = al.artist_id
GROUP BY artista
ORDER BY COUNT(al.artist_id) DESC , artista;