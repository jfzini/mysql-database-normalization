-- Crie uma QUERY que exibe o top 3 de álbuns com as músicas que mais foram favoritadas.
-- O resultado deve possuir duas colunas:
-- album: O nome do álbum
-- favoritadas: Quantas vezes as músicas do álbum foram favoritadas
-- Seu resultado deve estar ordenado em ordem decrescente, baseando-se no número de favoritadas. Em caso de empate, ordene os resultados pelo nome do álbum em ordem alfabética. Queremos apenas o top 3 de álbuns com mais músicas favoritadas.

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