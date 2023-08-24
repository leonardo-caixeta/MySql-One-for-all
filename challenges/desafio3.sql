SELECT
	u.name AS pessoa_usuaria,
  COUNT(r.reproduction_date) AS musicas_ouvidas,
	ROUND(SUM(s.duration)/60, 2) AS total_minutos
FROM user AS u

INNER JOIN reproduction_history AS r
  ON u.id_user = r.user_id

INNER JOIN song AS s
  ON r.song_id = s.id_song

GROUP BY u.name
ORDER BY pessoa_usuaria;