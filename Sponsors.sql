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
