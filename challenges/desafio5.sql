-- Estamos fazendo um estudo das músicas mais tocadas e precisamos saber quais são as duas músicas mais tocadas no momento. Crie uma QUERY que possua duas colunas:
-- A primeira coluna deve possuir o alias "cancao" e exibir o nome da canção.
-- A segunda coluna deve possuir o alias "reproducoes" e exibir a quantidade de pessoas que já escutaram a canção em questão.
-- Seu resultado deve estar ordenado em ordem decrescente, baseando-se no número de reproduções. Em caso de empate, ordene os resultados pelo nome da canção em ordem alfabética. Queremos apenas o top 2 de músicas mais tocadas.

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