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
