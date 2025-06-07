-- 1. List all songs in the 'Chill Vibes' playlist
SELECT songs.title
FROM songs
JOIN playlist_songs ON songs.id = playlist_songs.song_id
JOIN playlists ON playlist_songs.playlist_id = playlists.id
WHERE playlists.name = 'Chill Vibes';

-- 2. Find all songs by 'Taylor Swift'
SELECT songs.title
FROM songs
JOIN albums ON songs.album_id = albums.id
JOIN artists ON albums.artist_id = artists.id
WHERE artists.name = 'Taylor Swift';

-- 3. Count how many songs are in each playlist
SELECT playlists.name, COUNT(playlist_songs.song_id) AS total_songs
FROM playlists
JOIN playlist_songs ON playlists.id = playlist_songs.playlist_id
GROUP BY playlists.name;

-- 4. Find the average song duration for each artist
SELECT artists.name, AVG(songs.duration) AS avg_duration
FROM songs
JOIN albums ON songs.album_id = albums.id
JOIN artists ON albums.artist_id = artists.id
GROUP BY artists.name;
