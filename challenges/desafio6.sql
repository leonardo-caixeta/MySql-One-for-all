SELECT
    FORMAT(MIN(s.amount), 2) AS faturamento_minimo,
    FORMAT(MAX(s.amount), 2) AS faturamento_maximo,
    FORMAT(AVG(s.amount), 2) AS faturamento_medio,
    FORMAT(SUM(s.amount), 2) AS faturamento_total
FROM subscription AS s
INNER JOIN user AS u ON s.id_subscription = u.subscription_id;
