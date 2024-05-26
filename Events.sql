CREATE TABLE Events (
    event_id INT PRIMARY KEY,
    event_name VARCHAR(255),
    event_type_id INT,
    date DATE,
    location VARCHAR(255),
    description TEXT,
    FOREIGN KEY (event_type_id) REFERENCES EventTypes(event_type_id)
);

Insert into Events values (1,"Shayan's Engagement", 1, '2024-2-12', "Shahra e faisal karachi", "Event of our owner" ),
(2,"Shayan's Marriage", 1, '2024-4-22', "surjani town", "Event of our owner" ),
(3,"Ali's Nikkah", 1, '2024-8-11', "Memon masjid", "Event of our best client" ),
(4, "AI Seminar", 2, '2024-08-13', 'JDC IT City', 'Big names will be in event'),
(5, "English Language Course", 2, '2024-08-14', 'PIDC', 'Nothing special');