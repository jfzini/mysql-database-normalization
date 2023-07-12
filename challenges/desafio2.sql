SELECT 
    COUNT(DISTINCT s.song_id) AS cancoes,
    COUNT(DISTINCT al.album_id) AS albuns,
    COUNT(DISTINCT ar.artist_id) AS artistas
FROM
    artist ar
        INNER JOIN
    album al ON al.artist_id = ar.artist_id
        INNER JOIN
    song s ON s.album_id = al.album_id;