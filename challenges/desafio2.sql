-- Crie uma QUERY que exiba três colunas:
-- A primeira coluna deve exibir a quantidade total de canções. Dê a essa coluna o alias "cancoes".
-- A segunda coluna deve exibir a quantidade total de artistas e deverá ter o alias "artistas".
-- A terceira coluna deve exibir a quantidade de álbuns e deverá ter o alias "albuns".

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