SELECT
	a.name AS artista,
    al.name AS album,
    COUNT(*) AS pessoas_seguidoras
FROM album AS al
INNER JOIN artist AS a
ON al.artist_id = a.album_id
GROUP BY a.name, al.name
ORDER BY pessoas_seguidoras DESC, artista, album;
