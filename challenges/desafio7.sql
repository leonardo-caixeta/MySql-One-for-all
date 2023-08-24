SELECT
    ar.name AS artista,
    al.name AS album,
    COUNT(DISTINCT ufa.user_id) AS pessoas_seguidoras
FROM album AS al

INNER JOIN artist AS ar
	ON al.artist_id = ar.id_artist
LEFT JOIN user_follow_artist AS ufa
    ON ar.id_artist = ufa.artist_id
GROUP BY ar.name, al.name
ORDER BY pessoas_seguidoras DESC, artista, album;
