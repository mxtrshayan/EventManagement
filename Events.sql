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
