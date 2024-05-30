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
