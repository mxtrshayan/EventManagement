CREATE TABLE Tasks (
    task_id INT PRIMARY KEY,
    event_id INT,
    task_description TEXT,
    assigned_to VARCHAR(255),
    status VARCHAR(50),
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

insert into Tasks(task_id, event_id, task_description, assigned_to, status)
values(1, 1, "To manage coming guests", "Sohan", "ready"),
(2,1,'To serve dinner', 'Shahan', "ready"),
(3,2,'Managment of hall', 'Maaz', 'Absent'),
(4,3, 'To Communicate with nikkah khuwan','Farooq', 'Done'),
(5,4, 'To manage sound system in venue', 'maaz', 'Ok');