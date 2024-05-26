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