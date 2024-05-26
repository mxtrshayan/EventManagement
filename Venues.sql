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