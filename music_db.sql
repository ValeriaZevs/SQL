INSERT INTO Genre (name) VALUES
('Hip-Hop'), 
('Electropop'), 
('Alternative Metal'), 
('Post-Punk');

INSERT INTO Musician (name) VALUES
('Imagine Dragons'), 
('The Weeknd'), 
('Пошлая Молли'), 
('Oxxxymiron'), 
('Monetochka');

INSERT INTO Genre_Musician (genre_id, musician_id) VALUES
(1, 4),
(2, 5),
(3, 1),
(4, 3),
(3, 2);

INSERT INTO Album (name, year) VALUES
('Night Visions', 2012),
('Горгород', 2015), 
('Последняя дискотека', 2022), 
('After Hours', 2020), 
('Evolve', 2017);

INSERT INTO Track (name, duration, album_id) VALUES
('Radioactive', 186, 1), 
('Всего лишь писатель', 240, 2), 
('Blinding Lights', 200, 4), 
('Thunder', 187, 5), 
('Лето без интернета', 215, 3), 
('Believer', 204, 5);

INSERT INTO Album_Musician (musician_id, album_id) VALUES
(1, 1), 
(2, 5), 
(3, 3), 
(5, 4), 
(4, 2);

INSERT INTO List (name, year) VALUES
('Электро-саунд', 2021), 
('Русская лирика', 2023), 
('Epic Anthems', 2018), 
('Новая волна', 2020);

INSERT INTO List_Track (list_id, track_id) VALUES
(1, 3), 
(2, 2), 
(3, 4), 
(4, 5);
