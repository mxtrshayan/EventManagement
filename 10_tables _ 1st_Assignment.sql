create database Event_Management;
use Event_management;
create table eventtypes (
    Event_type_id int primary key,
    Event_type_name varchar(50) not null unique
);

create table events (
    Event_id int primary key,
    Event_name varchar(50) not null,
    Event_type_id int not null,
    Date date not null,
    Location varchar(55) not null,
    Description text,
    foreign key (Event_type_id) references eventtypes(event_type_id)
);

create table attendees (
    Attendee_id int primary key,
    Event_id int not null,
    Name varchar(50) not null,
    Email varchar(125) not null unique,
    Phone varchar(20) not null,
    foreign key (Event_id) references events(event_id)
);

create table speakers (
    Speaker_id int primary key,
    Event_id int not null,
    Name varchar(55) not null,
    Bio text not null,
    Contact_info varchar(75) not null,
    foreign key (Event_id) references events(event_id)
);

create table schedules (
    Schedule_id int primary key,
    Event_id int not null,
    Session_name varchar(30) not null,
    Start_time time not null,
    End_time time not null,
    Location varchar(70) not null,
    foreign key (Event_id) references events(event_id)
);

create table venues (
    Venue_id int primary key,
    Event_id int not null,
    Venue_name varchar(90) not null,
    Address varchar(95) not null,
    Capacity int not null,
    foreign key (Event_id) references events(event_id)
);

create table registrations (
    Registration_id int primary key,
    Attendee_id int not null,
    Event_id int not null,
    Payment_status varchar(50) not null,
    foreign key (Attendee_id) references attendees(attendee_id),
    foreign key (Event_id) references events(event_id)
);

create table sponsors (
    Sponsor_id int primary key,
    Event_id int not null,
    Sponsor_name varchar(50) not null,
    Email varchar(50) not null unique,
    foreign key (Event_id) references events(event_id)
);

create table tasks (
    Task_id int primary key,
    Event_id int not null,
    Task_description text not null,
    Assigned_to varchar(55) not null,
    Status varchar(50) not null,
    foreign key (Event_id) references events(event_id)
);

create table feedback (
    Feedback_id int primary key,
    Event_id int not null,
    Attendee_id int not null,
    Rating int not null check (Rating >= 1 and Rating <= 5),
    Comments text,
    foreign key (Event_id) references events(event_id),
    foreign key (Attendee_id) references attendees(attendee_id)
);
