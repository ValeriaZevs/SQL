CREATE DATABASE music_db;

-- Таблица жанров
CREATE TABLE genres (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

-- Таблица исполнителей
CREATE TABLE artists (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

-- Таблица связей исполнителей и жанров
CREATE TABLE artist_genre (
    artist_id INT NOT NULL,
    genre_id INT NOT NULL,
    PRIMARY KEY (artist_id, genre_id),
    FOREIGN KEY (artist_id) REFERENCES artists(id) ON DELETE CASCADE,
    FOREIGN KEY (genre_id) REFERENCES genres(id) ON DELETE CASCADE
);

-- Таблица альбомов
CREATE TABLE albums (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    release_year INT NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artists(id) ON DELETE CASCADE
);

-- Таблица треков
CREATE TABLE tracks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    duration TIME NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES albums(id) ON DELETE CASCADE
);

-- Таблица сборников
CREATE TABLE collections (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL UNIQUE,
    release_year INT NOT NULL
);

-- Таблица связей треков и сборников
CREATE TABLE collection_track (
    collection_id INT NOT NULL,
    track_id INT NOT NULL,
    PRIMARY KEY (collection_id, track_id),
    FOREIGN KEY (collection_id) REFERENCES collections(id) ON DELETE CASCADE,
    FOREIGN KEY (track_id) REFERENCES tracks(id) ON DELETE CASCADE
);

-- Вставка жанров
INSERT INTO genres (name) VALUES
('Rock'), 
('Pop'), 
('Jazz');

-- Вставка исполнителей
INSERT INTO artists (name) VALUES
('The Rockers'), 
('Pop Stars'), 
('Jazz Masters'), 
('Fusion Band');

-- Связь исполнителей с жанрами
INSERT INTO artist_genre (artist_id, genre_id) VALUES
(1, 1),  -- The Rockers - Rock
(2, 2),  -- Pop Stars - Pop
(3, 3),  -- Jazz Masters - Jazz
(4, 1),  -- Fusion Band - Rock
(1, 2);  -- The Rockers - Pop

-- Вставка альбомов
INSERT INTO albums (title, release_year, artist_id) VALUES
('Rock On', 2020, 1), 
('Pop Hits', 2021, 2), 
('Smooth Jazz', 2022, 3),
('Fusion Vibes', 2023, 4);

-- Вставка треков
INSERT INTO tracks (title, duration, album_id) VALUES
('Rock Anthem', '00:03:45', 1), 
('Rock Ballad', '00:04:20', 1), 
('Pop Song 1', '00:03:30', 2), 
('Pop Song 2', '00:03:10', 2), 
('Smooth Groove', '00:05:15', 3), 
('Jazz Nights', '00:06:00', 3), 
('Fusion Beat', '00:04:45', 4);

-- Вставка сборников
INSERT INTO collections (title, release_year) VALUES
('Best of Rock', 2022), 
('Pop Collection', 2023), 
('Jazz Vibes', 2023), 
('Fusion Mix', 2024);

-- Связь треков и сборников
INSERT INTO collection_track (collection_id, track_id) VALUES
(1, 1),  -- Best of Rock включает Rock Anthem
(1, 2),  -- Best of Rock включает Rock Ballad
(2, 3),  -- Pop Collection включает Pop Song 1
(2, 4),  -- Pop Collection включает Pop Song 2
(3, 5),  -- Jazz Vibes включает Smooth Groove
(3, 6),  -- Jazz Vibes включает Jazz Nights
(4, 1),  -- Fusion Mix включает Rock Anthem
(4, 7);  -- Fusion Mix включает Fusion Beat
