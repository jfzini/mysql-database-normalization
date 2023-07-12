SELECT 
    ar.artist_name AS artista,
    al.album_title AS album
FROM
    artist ar
        INNER JOIN
    album al ON ar.artist_id = al.artist_id
WHERE artist_name = 'Elis Regina'
ORDER BY album;