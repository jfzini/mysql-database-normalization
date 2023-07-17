-- Mostre uma relação dos álbuns produzidos por uma pessoa artista específica, neste caso "Elis Regina". Para isto crie uma QUERY que o retorno deve exibir as seguintes colunas:
-- O nome da pessoa artista, com o alias "artista".
-- O nome do álbum, com o alias "album".
-- Os resultados devem ser ordenados pelo nome do álbum em ordem alfabética.

SELECT 
    ar.artist_name AS artista,
    al.album_title AS album
FROM
    artist ar
        INNER JOIN
    album al ON ar.artist_id = al.artist_id
WHERE artist_name = 'Elis Regina'
ORDER BY album;