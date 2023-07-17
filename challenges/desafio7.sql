-- Mostre uma relação de todos os álbuns produzidos por cada pessoa artista, ordenada pela quantidade de seguidores que ela possui, de acordo com os detalhes a seguir. Para tal, crie uma QUERY com as seguintes colunas:
-- A primeira coluna deve exibir o nome da pessoa artista, com o alias "artista".
-- A segunda coluna deve exibir o nome do álbum, com o alias "album".
-- A terceira coluna deve exibir a quantidade de pessoas seguidoras que aquela pessoa artista possui e deve possuir o alias "pessoas_seguidoras".
-- Seus resultados devem estar ordenados de forma decrescente, baseando-se no número de pessoas seguidoras. Em caso de empate no número de pessoas, ordene os resultados pelo nome da pessoa artista em ordem alfabética e caso existam artistas com o mesmo nome, ordene os resultados pelo nome do álbum alfabeticamente.

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