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

