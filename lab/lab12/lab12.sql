.read sp19data.sql

-- Q2
CREATE TABLE obedience AS
  SELECT seven, animal FROM students;

-- Q3
CREATE TABLE smallest_int AS
  SELECT time, smallest FROM students
  WHERE smallest > 2 ORDER BY smallest
  LIMIT 20;

-- Q4
CREATE TABLE matchmaker AS
  SELECT s.pet, s.song, s.color, t.color
  FROM students as s, students as t 
  WHERE s.pet = t.pet AND s.song = t.song
  AND s.time < t.time;
