SELECT
	u.name AS pessoa_usuaria,
    CASE
      WHEN MAX(r.reproduction_date) > '2020-12-31' THEN 'Ativa'
      ELSE 'Inativa'
    END AS status_pessoa_usuaria
FROM user AS u
INNER JOIN reproduction_history AS r
ON u.id_user = r.user_id
GROUP BY u.name
ORDER BY pessoa_usuaria;
