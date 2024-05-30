create table Speakers (
    Speaker_id int primary key auto_increment,
    Event_id int not null,
    Name varchar(55) not null,
    Bio text not null,
    Contact_info varchar(75) not null,
    foreign key (Event_id) references events(event_id)
);

insert into speakers (event_id, name, bio, contact_info) values
( 1, 'Atif Aslam', 'Well known singer in Pakistan', 'instagram @atifaslam'),
(1, 'Chahat Fateh Ali Khan', 'Instagram singer', 'instagram @chahatAlikhan');
