-- Insert artists
INSERT INTO artists (id, name) VALUES
(1, 'Queen'),
(2, 'Taylor Swift'),
(3, 'Coldplay');

-- Insert albums
INSERT INTO albums (id, title, artist_id, year) VALUES
(1, 'A Night at the Opera', 1, 1975),
(2, '1989', 2, 2014),
(3, 'Parachutes', 3, 2000);

-- Insert songs
INSERT INTO songs (id, title, album_id, duration) VALUES
(1, 'Bohemian Rhapsody', 1, 354),
(2, 'Love Story', 2, 230),
(3, 'Yellow', 3, 267),
(4, 'Shake It Off', 2, 242),
(5, 'Don’t Stop Me Now', 1, 210);

-- Insert playlists
INSERT INTO playlists (id, name) VALUES
(1, 'Workout Mix'),
(2, 'Chill Vibes');

-- Insert playlist-song relations
INSERT INTO playlist_songs (playlist_id, song_id) VALUES
(1, 1),
(1, 4),
(2, 2),
(2, 3),
(2, 5);
