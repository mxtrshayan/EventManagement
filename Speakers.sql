CREATE TABLE Speakers (
    speaker_id INT PRIMARY KEY,
    event_id INT,
    name VARCHAR(75),
    bio TEXT,
    contact_info VARCHAR(55),
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

insert into speakers values
(1, 1, 'Atif Aslam', 'Well known singer in Pakistan', 'intagram @atifaslam'),
(2, 1, 'Chahat Fateh Ali Khan', 'Instagram singer', 'intagram @chahatAlikhan');