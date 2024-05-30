create table Eventtypes (
    Event_type_id int primary key auto_increment,
    Event_type_name varchar(50) not null unique
);

insert into eventtypes (event_type_name) values
('Wedding'),
('Seminar'),
('Ceremony'),
('Recitation event');

