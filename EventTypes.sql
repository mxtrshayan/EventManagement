create table EventTypes (
    event_type_id INT PRIMARY KEY,
    event_type_name VARCHAR(255)
);

INSERT INTO EventTypes (event_type_id, event_type_name) VALUES
(1, 'Wedding'),
(2, 'Seminar'),
(3, 'Ceremony'),
(4, 'Recitation event');