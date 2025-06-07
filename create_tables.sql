-- Create Artists table
CREATE TABLE artists (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL
);

-- Create Albums table
CREATE TABLE albums (
  id INTEGER PRIMARY KEY,
  title TEXT NOT NULL,
  artist_id INTEGER,
  year INTEGER,
  FOREIGN KEY (artist_id) REFERENCES artists(id)
);

-- Create Songs table
CREATE TABLE songs (
  id INTEGER PRIMARY KEY,
  title TEXT NOT NULL,
  album_id INTEGER,
  duration INTEGER, -- duration in seconds
  FOREIGN KEY (album_id) REFERENCES albums(id)
);

-- Create Playlists table
CREATE TABLE playlists (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL
);

-- Create Playlist_Songs junction table
CREATE TABLE playlist_songs (
  playlist_id INTEGER,
  song_id INTEGER,
  FOREIGN KEY (playlist_id) REFERENCES playlists(id),
  FOREIGN KEY (song_id) REFERENCES songs(id)
);
