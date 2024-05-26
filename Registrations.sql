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