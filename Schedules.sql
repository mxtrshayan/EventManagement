create table Schedules (
    Schedule_id int primary key auto_increment,
    Event_id int not null,
    Session_name varchar(30) not null,
    Start_time time not null,
    End_time time not null,
    Location varchar(70) not null,
    foreign key (Event_id) references events(event_id)
);

insert into schedules (event_id, session_name, start_time, end_time, location) values
(1, 'Groom bride entry', '18:00:00', '19:00:00', 'Hall no 1'),
(1, 'Ring Ceremony', '19:00:00', '20:00:00', 'Hall no 2'),
(2, 'Groom/s entry', '19:00:00', '19:30:00', 'Gate A'),
(2, 'Doodh pilai', '18:00:00', '22:00:00', 'Gate A'),
(2, 'Rukhsati', '23:00:00', '23:30:00', 'Gate B'),
(3, 'Ali/s Entry in masjid', '06:00:00', '07:00:00', 'Haroonia masjid main gate'),
(3, 'Nikkah signature', '07:00:00', '08:00:00', 'Main Hall of masjid'),
(4, 'Introduction to seminar', '07:00:00', '07:30:00', 'Auditorium'),
(4, 'Lunch', '13:00:00', '14:30:00', 'Dinning Hall'),
(5, 'Course intro', '13:00:00', '14:30:00', 'Auditorium');
