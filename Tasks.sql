create table Tasks (
    Task_id int primary key auto_increment,
    Event_id int not null,
    Task_description text not null,
    Assigned_to varchar(55) not null,
    Status varchar(50) not null,
    foreign key (Event_id) references events(event_id)
);

insert into tasks (event_id, task_description, assigned_to, status) values
(1, 'To manage coming guests', 'Sohan', 'ready'),
(1, 'To serve dinner', 'Shahan', 'ready'),
(2, 'Management of hall', 'Maaz', 'Absent'),
(3, 'To Communicate with nikkah khuwan', 'Farooq', 'Done'),
(4, 'To manage sound system in venue', 'Maaz', 'Ok');
