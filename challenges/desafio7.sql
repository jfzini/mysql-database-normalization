SELECT 
    ar.artist_name AS artista,
    al.album_title AS album,
    COUNT(uf.user_id) AS pessoas_seguidoras
FROM
    artist ar
        INNER JOIN
    album al ON ar.artist_id = al.artist_id
        INNER JOIN
    user_follow uf ON uf.artist_id = al.artist_id
GROUP BY artista , album
ORDER BY pessoas_seguidoras DESC , artista , album;