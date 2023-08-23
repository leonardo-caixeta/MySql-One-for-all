SELECT
    (SELECT COUNT(*) FROM song) AS cancoes,
    (SELECT COUNT(DISTINCT id_artist) FROM artist) AS artistas,
    (SELECT COUNT(DISTINCT id_album) FROM album) AS albuns;