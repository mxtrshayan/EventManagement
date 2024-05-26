CREATE TABLE Schedules (
    schedule_id INT PRIMARY KEY,
    event_id INT,
    session_name varchar(30),
    start_time TIME,
    end_time TIME,
    location VARCHAR(70),
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);
insert into Schedules (schedule_ID, event_ID, session_name, start_time, end_time, location)
values(2, 1, 'Groom bride entry','6:00:00', '7:00:00', 'Hall no 1'),
(1, 1, 'Ring Ceremony','7:00:00', '8:00:00', 'Hall no 2'),
(3, 2, 'Groom/s entry','7:00:00', '7:30:00', 'Gate A'),
(4, 2, 'Doodh pilai','6:00:00', '10:00:00', 'Gate A'),
(5, 2, 'Rukhsati','11:00:00', '11:30:00', 'Gate B'),
(6, 3, 'Ali/s Entry in masjid','6:00:00', '7:00:00', 'Haroonia masjid main gate'),
(7, 3, 'Nikkah signature','7:00:00', '8:00:00', 'Main Hall of masjid'),
(8, 4, 'Introduction to seminar','7:00:00', '7:30:00', 'Auditorium'),
(9, 4, 'Lunch','1:00:00', '10:30:00', 'Dinning Hall'),
(10, 5, 'Course intro','1:00:00', '2:30:00', 'Auditorium');