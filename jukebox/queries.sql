-- 1. List all artists (only names)
SELECT name FROM artists;

-- 2. Count the number of tracks that are shorter than 2 minutes
SELECT COUNT(*) AS short_tracks_count FROM tracks
WHERE milliseconds < 2 * 60000

-- 3. List the first ten albums of the Jukebox DB, sorted alphabetically
SELECT * FROM albums
ORDER BY title ASC
LIMIT 10

-- 4. List the track and album information for the tracks which names are
-- containing a given keyword (case insensitive)
SELECT tracks.name AS song_name, albums.title AS album_title
FROM tracks
JOIN albums ON tracks.album_id = albums.id
WHERE tracks.name LIKE '%love%'

-- 5. List the top 5 Rock artists with the most tracks
-- List the top 5 Rock artists with the most tracks
SELECT artists.name, COUNT(*) AS track_count
FROM artists
JOIN albums ON albums.artist_id = artists.id
JOIN tracks ON tracks.album_id = albums.id
JOIN genres ON genres.id = tracks.genre_id
WHERE genres.name = 'Rock'
GROUP BY artists.name
ORDER BY track_count DESC
LIMIT 5
