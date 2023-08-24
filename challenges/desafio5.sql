SELECT
	s.name AS cancao,
    COUNT(DISTINCT r.user_id) AS reproducoes
FROM song AS s
INNER JOIN reproduction_history AS r
ON s.id_song = r.song_id
GROUP BY s.name
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;