SELECT
    COUNT(*) AS musicas_no_historico
FROM reproduction_history AS rh
INNER JOIN user AS u ON rh.user_id = u.id_user
WHERE u.name = 'Barbara Liskov';
