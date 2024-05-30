create database Event_Management;
use Event_management;

create table Eventtypes (
    Event_type_id int primary key auto_increment,
    Event_type_name varchar(50) not null unique
);

insert into eventtypes (event_type_name) values
('Wedding'),
('Seminar'),
('Ceremony'),
('Recitation event');
select * from eventtypes;

create table Events (
    Event_id int primary key auto_increment,
    Event_name varchar(50) not null,
    Event_type_id int not null,
    Date date not null,
    Location varchar(55) not null,
    Description text,
    foreign key (Event_type_id) references eventtypes(event_type_id)
);

insert into events ( event_name, event_type_id, date, location, description) values
( "Shayan's Engagement", 1, '2024-02-12', "Shahra e faisal karachi", "Event of our owner"),
( "Shayan's Marriage", 1, '2024-04-22', "Surjani town", "Event of our owner"),
("Ali's Nikkah", 1, '2024-08-11', "Memon masjid", "Event of our best client"),
("AI Seminar", 2, '2024-08-13', 'JDC IT City', 'Big names will be in event'),
( "English Language Course", 2, '2024-08-14', 'PIDC', 'Nothing special');
select * from events;

create table Attendees (
    Attendee_id int primary key auto_increment,
    Event_id int not null,
    Name varchar(40) not null check (length(name) <= 40),
    Email varchar(125) not null unique,
    Phone varchar(20) not null,
    foreign key (event_id) references events(event_id)
);



insert into attendees (event_id, name, email, phone) values
(1, 'Abu Bakar', 'abubakar234@gmail.com', '03452228982'),
(2, 'Nimra', 'nimrababar@gmail.com', '03451112233'),
(3, 'Ahmed', 'aliahmed@gmail.com', '03456677888'),
(4, 'Sara Farzan', 'saraaa@gmail.com', '03459398877'),
(5, 'Bilal Zafar', 'bilalzafar@gmail.com', '03454243322'),
(1, 'Zain Malik', 'zainmalik@gmail.com', '03457738899'),
(2, 'Fatima Noor', 'fatimanoor@gmail.com', '03858689900'),
(3, 'Umar Farooq', 'umarfarooq@gmail.com', '03459290011'),
(4, 'Hina Khan', 'hinakhan@gmail.com', '03310051122'),
(5, 'Ahmed Raza', 'ahmedraza@gmail.com', '03461512233'),
(1, 'Nida Ali', 'nidaali@gmail.com', '03462227344'),
(2, 'Asma Rehman', 'asmarehman@gmail.com', '0323734455'),
(3, 'Waseem Akram', 'waseemakram@gmail.com', '03267445566'),
(4, 'Rabia Sheikh', 'rabiasheikh@gmail.com', '03165576677'),
(5, 'Zara Ahmed', 'zaraahmed987@gmail.com', '03156767788');




create table Speakers (
    Speaker_id int primary key auto_increment,
    Event_id int not null,
    Name varchar(55) not null,
    Bio text not null,
    Contact_info varchar(75) not null,
    foreign key (Event_id) references events(event_id)
);

insert into speakers (event_id, name, bio, contact_info) values
( 1, 'Atif Aslam', 'Well known singer in Pakistan', 'instagram @atifaslam'),
(1, 'Chahat Fateh Ali Khan', 'Instagram singer', 'instagram @chahatAlikhan');


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


create table Venues (
    Venue_id int primary key auto_increment,
    Event_id int not null,
    Venue_name varchar(90) not null,
    Address varchar(95) not null,
    Capacity int not null,
    foreign key (Event_id) references events(event_id)
);

insert into venues (event_id, venue_name, address, capacity) values
(1, 'Diamond banquet', 'Federal b area karachi', 400),
(2, 'Crystal lawn', 'UsmanAbad karachi', 500),
(3, 'Memon masjid', 'MA jinnah road karachi', 450),
(4, 'PACC', 'PIDC', 900);


create table Registrations (
    Registration_id int primary key auto_increment,
    Attendee_id int not null,
    Event_id int not null,
    Payment_status varchar(50) not null,
    foreign key (Attendee_id) references attendees(attendee_id),
    foreign key (Event_id) references events(event_id)
);

insert into registrations (attendee_id, event_id, payment_status) values
(8, 4, 'yes'),
(9, 4, 'yes'),
(10, 4, 'no'),
(11, 4, 'yes'),
(12, 4, 'yes'),
(13, 5, 'yes'),
(14, 5, 'no'),
(15, 5, 'yes'),
(7, 5, 'yes');

select * from registrations;
create table Sponsors (
    Sponsor_id int primary key auto_increment,
    Event_id int not null,
    Sponsor_name varchar(50) not null,
    Email varchar(50) not null unique,
    foreign key (Event_id) references events(event_id)
);

insert into sponsors (event_id, sponsor_name, email) values
(1, 'His father Muhammad Shahid', 'shahid@gmail.com'),
(2, 'By Own Muhammad Shayan', 'shayan303@gmail.com'),
(3, 'His Father Abdul Ghafoor', 'abdulghafoor@gmail.com'),
(4, 'Techno innovation', 'techno@gmail.com'),
(5, 'Alica global', 'alicaglobal@gmail.com');



create table Tasks (
    Task_id int primary key auto_increment,
    Event_id int not null,
    Task_description text not null,
    Assigned_to varchar(55) not null,
    Status varchar(50) not null,
    foreign key (Event_id) references events(event_id)
);

insert into tasks (event_id, task_description, assigned_to, status) values
(1, 'To manage coming guests', 'Sohan', 'ready'),
(1, 'To serve dinner', 'Shahan', 'ready'),
(2, 'Management of hall', 'Maaz', 'Absent'),
(3, 'To Communicate with nikkah khuwan', 'Farooq', 'Done'),
(4, 'To manage sound system in venue', 'Maaz', 'Ok');



create table Feedback (
    Feedback_id int primary key auto_increment,
    Event_id int not null,
    Attendee_id int not null,
    Rating float not null check (rating >= 1 and rating <= 5),
    Comments text,
    foreign key (Event_id) references events(event_id),
    foreign key (Attendee_id) references attendees(attendee_id)
);

insert into feedback(event_id, attendee_id, rating, comments)
values(1, 8, 5, 'Dinner was amazing'),
(1, 9, 3, 'lighting was not good'),
(2, 10, 4.5, 'Dance was good'),
(2, 7, 5, 'Songs were amazing'),
(4, 5, 5, 'Got rare knowledge about automation'),
(4, 4, 1, 'Poor experience ever'),
(5, 3, 3, 'Avg experience');

-- Queries
select distinct event_type_id from events;
select distinct location from events;
select distinct name from attendees;
select distinct bio from speakers;
select distinct session_name from schedules;
select * from events where event_name like "%ha%";
select * from attendees where name like '%ni%';
select * from venues where venue_name like '&s';
select * from venues where venue_name like '&a';
SELECT * FROM venues WHERE venue_name LIKE 'd%';
select * from feedback where comments like '%amazing%';
select * from tasks where task_description like '%manage%';
select * from sponsors where sponsor_name like '%global%';
select count(*) as totalEvents from events;
select count(*) as totalattendeees from attendees;
select count(*) as totalafeedback from feedback;
select avg(rating) as averageRrating from feedback;
select max(capacity) as maxCcapacity from venues;
select min(date) as earliestDate from events;
select sum(attendee_id) as total_att from attendees;
select * from events where event_type_id in (1, 2);
select * from attendees where event_id in (1,8);
select * from tasks where status in ('ready', 'Done');
select * from sponsors where event_id in (3,4 );
select * from events where date between '2024-01-01' and '2024-12-31';
select * from schedules where start_time between '6:00:00' and '8:00:00';
select * from feedback where rating between 7 and 10;
SELECT MIN(Start_time) AS Earliest_Start FROM Schedules;
SELECT MAX(End_time) AS Latest_End FROM Schedules;
SELECT Task_id, Task_description, Assigned_to, Status FROM Tasks;
SELECT COUNT(*) AS Sponsor_Count FROM Sponsors;
SELECT COUNT(*) AS Registration_Count FROM Registrations;
SELECT Name, Bio FROM Speakers WHERE Event_id = 1;
select * from attendees where attendee_id between 1 and 5;
select * from venues where capacity between 400 and 500;
select event_id, count(attendee_id) as total_attendees from attendees group by event_id having total_attendees > 2;
select event_type_id, count(*) as total_events from events group by event_type_id having count(*) > 2;
select event_id, avg(rating) as avg_rating from feedback group by event_id having avg_rating > 3;
select event_id, count(*) as total_tasks from tasks group by event_id having count(*) < 5;
select event_type_id, count(*) as total_events from events group by event_type_id having count(*) > 2;
select event_type_id, count(*) as total_events from events group by event_type_id;
select event_id, avg(rating) as avg_rating from feedback group by event_id;
select event_id, count(*) as total_tasks from tasks group by event_id;
select location, count(*) as total_events from events group by location;
select event_id, count(*) as total_registrations from registrations group by event_id;
select event_id, count(*) as total_sponsors from sponsors group by event_id;
select event_id, count(*) as total_feedback from feedback group by event_id;
select * from events as e inner join eventtypes as et on e.event_id = et.event_type_id;
select * from events as e left join eventtypes as et on e.event_id = et.event_type_id;
select * from events as e right join eventtypes as et on e.event_id = et.event_type_id;
select * from events as e cross join eventtypes as et on e.event_id = et.event_type_id;
select * from registrations left join events on registrations.event_id = events.event_id;
select * from feedback join attendees on feedback.attendee_id = attendees.attendee_id;
select * from schedules join events on schedules.event_id = events.event_id;
select * from attendees right join events on attendees.event_id = events.event_id;

