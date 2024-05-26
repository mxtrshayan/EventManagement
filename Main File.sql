create database Event_Management;
use Event_management;
create table EventTypes (
    event_type_id INT PRIMARY KEY,
    event_type_name VARCHAR(255)
);

INSERT INTO EventTypes (event_type_id, event_type_name) VALUES
(1, 'Wedding'),
(2, 'Seminar'),
(3, 'Ceremony'),
(4, 'Recitation event');

CREATE TABLE Events (
    event_id INT PRIMARY KEY,
    event_name VARCHAR(255),
    event_type_id INT,
    date DATE,
    location VARCHAR(255),
    description TEXT,
    FOREIGN KEY (event_type_id) REFERENCES EventTypes(event_type_id)
);

Insert into Events values (1,"Shayan's Engagement", 1, '2024-2-12', "Shahra e faisal karachi", "Event of our owner" ),
(2,"Shayan's Marriage", 1, '2024-4-22', "surjani town", "Event of our owner" ),
(3,"Ali's Nikkah", 1, '2024-8-11', "Memon masjid", "Event of our best client" ),
(4, "AI Seminar", 2, '2024-08-13', 'JDC IT City', 'Big names will be in event'),
(5, "English Language Course", 2, '2024-08-14', 'PIDC', 'Nothing special');


CREATE TABLE Attendees (
    attendee_id INT PRIMARY KEY,
    event_id INT,
    name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(20),
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

insert into Attendees (attendee_id, event_id, name, email, phone)
values
(1, 1, 'Abu Bakar', 'abubakar234@gmail.com', '03452228982'),
(2, 2, 'Nimra', 'nimrababar@gmail.com', '03451112233'),
(3, 3, 'Ali Ahmed', 'ali.ahmed@gmail.com', '03456677888'),
(4, 4, 'Farzan', 'sara.ali@gmail.com', '03459398877'),
(5, 5, 'Bilal Zafar', 'bilalzafar@gmail.com', '03454243322'),
(6, 1, 'Zain Malik', 'zainmalik@gmail.com', '03457738899'),
(7, 2, 'Fatima Noor', 'fatimanoor@gmail.com', '03858689900'),
(8, 3, 'Umar Farooq', 'umarfarooq@gmail.com', '03459290011'),
(9, 4, 'Hina Khan', 'hinakhan@gmail.com', '03310051122'),
(10, 5, 'Ahmed Raza', 'ahmedraza@gmail.com', '03461512233'),
(11, 1, 'Nida Ali', 'nidaali@gmail.com', '03462227344'),
(12, 2, 'Asma Rehman', 'asmarehman@gmail.com', '0323734455'),
(13, 3, 'Waseem Akram', 'waseemakram@gmail.com', '03267445566'),
(14, 4, 'Rabia Sheikh', 'rabiasheikh@gmail.com', '03165576677'),
(15, 5, 'Zara Ahmed', 'zaraahmed987@gmail.com', '03156767788');


CREATE TABLE Speakers (
    speaker_id INT PRIMARY KEY,
    event_id INT,
    name VARCHAR(55),
    bio TEXT,
    contact_info VARCHAR(75),
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

insert into speakers values
(1, 1, 'Atif Aslam', 'Well known singer in Pakistan', 'intagram @atifaslam'),
(2, 1, 'Chahat Fateh Ali Khan', 'Instagram singer', 'intagram @chahatAlikhan');

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

CREATE TABLE Venues (
    venue_id INT PRIMARY KEY,
    venue_name VARCHAR(90),
    address VARCHAR(95),
    capacity INT
);

insert into venues(venue_id, venue_name, address, capacity)
 values 
(1,'Diamond banquet', 'Federal b area karachi', 400),
(2,'Crystal lawn', 'UsmanAbad karachi', 500),
(3,'Memon masjid', 'MA jinnah road karachi', 450),
(4,'PACC', 'PIDC', 900);



CREATE TABLE Registrations (
    registration_id INT PRIMARY KEY,
    attendee_id INT,
    event_id INT,
    payment_status VARCHAR(50),
    FOREIGN KEY (attendee_id) REFERENCES Attendees(attendee_id),
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

insert into registrations(registration_id, attendee_id, event_id, payment_status)
values 
(1,8,4, 'yes'),
(2,9,4,'yes'),
(3,10,4, 'no'),
(4,11,4,'yes'),
(5,12,4, 'yes'),
(6,13,5,'yes'),
(7,14,5, 'no'),
(8,15,5,'yes'),
(9,7,5, 'yes');

CREATE TABLE Sponsors (
    sponsor_id INT PRIMARY KEY,
    event_id INT,
    sponsor_name VARCHAR(160),
    email varchar(50),
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

insert into Sponsors(sponsor_id, event_id, sponsor_name, email)
values 
(1, 1, 'His father Muhamad Shahid', 'shahid@gmail.com'),
(2, 2, 'By Own Muhammad Shayan', 'shayan303@@gmail.com'),
(3, 3, 'His Father Abdul Ghafoor', 'shahid@gmail.com'),
(4, 4, 'Techno innovation', 'techno@gmail.com'),
(5,5, 'Alica global', 'alicaglobal@gmail.com');

CREATE TABLE Tasks (
    task_id INT PRIMARY KEY,
    event_id INT,
    task_description TEXT,
    assigned_to VARCHAR(255),
    status VARCHAR(50),
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

insert into Tasks(task_id, event_id, task_description, assigned_to, status)
values(1, 1, "To manage coming guests", "Sohan", "ready"),
(2,1,'To serve dinner', 'Shahan', "ready"),
(3,2,'Managment of hall', 'Maaz', 'Absent'),
(4,3, 'To Communicate with nikkah khuwan','Farooq', 'Done'),
(5,4, 'To manage sound system in venue', 'maaz', 'Ok');

CREATE TABLE Feedback (
    feedback_id INT PRIMARY KEY,
    event_id INT,
    attendee_id INT,
    rating INT,
    comments TEXT,
    FOREIGN KEY (event_id) REFERENCES Events(event_id),
    FOREIGN KEY (attendee_id) REFERENCES Attendees(attendee_id)
);

insert into Feedback(feedback_id , event_id, attendee_id, rating, comments)
values(1, 1, 8, 10, 'Dinner was amazing'),
(2, 1, 9, 3, 'lighting was not good'),
(3, 2, 10, 9, 'Dance was good'),
(4, 2, 7, 10, 'Songs were amazing'),
(5, 4, 5, 10, 'Got rare knowledge about automation'),
(6, 4, 4, 1, 'Poor experience ever'),
(7, 5, 3, 7, 'Avg experience');

select distinct event_type_id from events;
select distinct location from events;
select distinct name from attendees;
select distinct bio from speakers;
select distinct session_name from schedules;
select * from events where event_name like "%ha%";
select * from attendees where name like '%ni%';
select * from venues where venue_name like '&s';
SELECT * FROM venues WHERE venue_name LIKE 'd%';
select * from feedback where comments like '%amazing%';
select * from tasks where task_description like '%manage%';
select * from sponsors where sponsor_name like '%global%';
select count(*) as totalEvents from events;
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
select * from attendees right join events on attendees.event_id = events.event_id;
select * from feedback join attendees on feedback.attendee_id = attendees.attendee_id;
select * from schedules join events on schedules.event_id = events.event_id;