SELECT 
    MIN(s.sub_value) AS faturamento_minimo,
    MAX(s.sub_value) AS faturamento_maximo,
    ROUND(AVG(s.sub_value), 2) AS faturamento_medio,
    SUM(sub_value) AS faturamento_total
FROM
    subscription s
        INNER JOIN
    `user` u ON s.sub_id = u.sub_id;