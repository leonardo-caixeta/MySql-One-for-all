SELECT
    MIN(s.amount) AS faturamento_minimo,
    MAX(s.amount) AS faturamento_maximo,
    AVG(s.amount) AS faturamento_medio,
    ROUND(SUM(s.amount), 2) AS faturamento_total
FROM subscription AS s
INNER JOIN user AS u ON s.id_subscription = u.subscription_id;
