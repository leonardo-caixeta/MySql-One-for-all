SELECT
  ar.name AS artista,
  al.name AS album
FROM artist AS ar
INNER JOIN album AS al
  ON ar.id_artist = al.artist_id
WHERE ar.name = 'Elis Regina';