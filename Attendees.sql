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
