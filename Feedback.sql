create table Feedback (
    Feedback_id int primary key auto_increment,
    Event_id int not null,
    Attendee_id int not null,
    Rating float not null check (rating >= 1 and rating <= 5),
    Comments text,
    foreign key (Event_id) references events(event_id),
    foreign key (Attendee_id) references attendees(attendee_id)
);

insert into feedback(event_id, attendee_id, rating, comments)
values(1, 8, 5, 'Dinner was amazing'),
(1, 9, 3, 'lighting was not good'),
(2, 10, 4.5, 'Dance was good'),
(2, 7, 5, 'Songs were amazing'),
(4, 5, 5, 'Got rare knowledge about automation'),
(4, 4, 1, 'Poor experience ever'),
(5, 3, 3, 'Avg experience');
