----Задание 1

# Название и продолжительность самого длительного трека.
SELECT name, duration FROM Track
WHERE duration = (SELECT MAX(duration) FROM Track)

# Название треков, продолжительность которых не менее 3,5 минут.
SELECT name FROM Track
WHERE duration >= 210

# Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name FROM List
WHERE year between 2018 and 2021

# Исполнители, чьё имя состоит из одного слова.
SELECT name FROM Musicians
WHERE name NOT LIKE '% %'

# Название треков, которые содержат слово «мой» или «my».
SELECT name FROM Track
WHERE name LIKE '%мой%' OR LIKE name LIKE '%my%'


  
-----Задание 2

# Количество исполнителей в каждом жанре.
select g.name, count (m.name) from Musician m
join Genre_Musician gm  on m.musician_id = gm.musician_id 
join Genre g on gm.genre_id = g.genre_id 
group by g.genre_id;

# Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT t.name, COUNT(t.name) FROM Track t
JOIN Album a ON a.year = t.year
WHERE a.year BETWEEN 2019 AND 2021

# Средняя продолжительность треков по каждому альбому.
SELECT a.name, AVG(duration) FROM Track t 
JOIN Album a ON a.album_id = t.album_id 
GROUP BY a.name;

# Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT m.name FROM Musicians m
WHERE m.name NOT IN
(SELECT m.name FROM Album a
JOIN Album_Musician am ON a.album_id = am.album_id
JOIN Musician m ON am.musician_id = m.musician_id
WHERE a.year = 2020)

# Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT l.name from List l
JOIN List_Track lt on l.list_id = lt.list_id 
JOIN Track t on lt.track_id = t.track_id 
JOIN Album a on t.album_id = a.album_id 
JOIN Album_Musician am on a.album_id = am.album_id 
JOIN Musician m on am.musician_id = m.musician_id 
WHERE m.name LIKE 'Imagina Dragons';
