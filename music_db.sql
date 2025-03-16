INSERT INTO genre (genre_name) VALUES
('Hip-Hop'), 
('Electropop'), 
('Alternative Metal'), 
('Post-Punk');

INSERT INTO musician (name) VALUES
('Imagine Dragons'), 
('The Weeknd'), 
('Пошлая Молли'), 
('Oxxxymiron'), 
('Monetochka');

INSERT INTO genre_musician (genre_id, musician_id) VALUES
(1, 4),
(2, 5),
(3, 1),
(4, 3),
(3, 2);

INSERT INTO album (name, year) VALUES
('Night Visions', 2012),
('Горгород', 2015), 
('Последняя дискотека', 2022), 
('After Hours', 2020), 
('Evolve', 2017);

INSERT INTO track (name, duration, album_id) VALUES
('Radioactive', 186, 1), 
('Всего лишь писатель', 240, 2), 
('Blinding Lights', 200, 4), 
('Thunder', 187, 5), 
('Лето без интернета', 215, 3), 
('Believer', 204, 5);

INSERT INTO album_musician (musician_id, album_id) VALUES
(1, 1), 
(2, 5), 
(3, 3), 
(5, 4), 
(4, 2);

INSERT INTO list (name, year)
VALUES
('Электро-саунд', 2021), 
('Русская лирика', 2023), 
('Epic Anthems', 2018), 
('Новая волна', 2020);

INSERT INTO list_track (list_id, track_id) VALUES
(1, 3), 
(2, 2), 
(3, 4), 
(4, 5);
