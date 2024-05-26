CREATE TABLE Feedback (
    feedback_id INT PRIMARY KEY,
    event_id INT,
    attendee_id INT,
    rating INT,
    comments TEXT,
    FOREIGN KEY (event_id) REFERENCES Events(event_id),
    FOREIGN KEY (attendee_id) REFERENCES Attendees(attendee_id)
);

insert into Feedback(feedback_id , event_id, attendee_id, rating, comments)
values(1, 1, 8, 10, 'Dinner was amazing'),
(2, 1, 9, 3, 'lighting was not good'),
(3, 2, 10, 9, 'Dance was good'),
(4, 2, 7, 10, 'Songs were amazing'),
(5, 4, 5, 10, 'Got rare knowledge about automation'),
(6, 4, 4, 1, 'Poor experience ever'),
(7, 5, 3, 7, 'Avg experience');