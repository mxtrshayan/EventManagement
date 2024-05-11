CREATE DATABASE Event_Management;
USE Event_Management;

-- 2. EventTypes
CREATE TABLE EventTypes (
    event_type_id INT PRIMARY KEY,
    event_type_name VARCHAR(255)
);

-- 1. Events
CREATE TABLE Events (
    event_id INT PRIMARY KEY,
    event_name VARCHAR(255),
    event_type_id INT,
    date DATE,
    location VARCHAR(255),
    description TEXT,
    FOREIGN KEY (event_type_id) REFERENCES EventTypes(event_type_id)
);

-- 3. Attendees
CREATE TABLE Attendees (
    attendee_id INT PRIMARY KEY,
    event_id INT,
    name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(20),
    registration_date DATE,
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

-- 4. Speakers
CREATE TABLE Speakers (
    speaker_id INT PRIMARY KEY,
    event_id INT,
    name VARCHAR(255),
    bio TEXT,
    contact_info VARCHAR(255),
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

-- 5. Schedules
CREATE TABLE Schedules (
    schedule_id INT PRIMARY KEY,
    event_id INT,
    session_name VARCHAR(255),
    start_time TIME,
    end_time TIME,
    location VARCHAR(255),
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

-- 6. Venues
CREATE TABLE Venues (
    venue_id INT PRIMARY KEY,
    venue_name VARCHAR(255),
    address VARCHAR(255),
    capacity INT
);

-- 7. Registrations
CREATE TABLE Registrations (
    registration_id INT PRIMARY KEY,
    attendee_id INT,
    event_id INT,
    registration_date DATE,
    payment_status VARCHAR(50),
    FOREIGN KEY (attendee_id) REFERENCES Attendees(attendee_id),
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

-- 8. Sponsors
CREATE TABLE Sponsors (
    sponsor_id INT PRIMARY KEY,
    event_id INT,
    sponsor_name VARCHAR(255),
    contact_info VARCHAR(255),
    sponsorship_level VARCHAR(50),
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

-- 9. Tasks
CREATE TABLE Tasks (
    task_id INT PRIMARY KEY,
    event_id INT,
    task_description TEXT,
    assigned_to VARCHAR(255),
    deadline DATE,
    status VARCHAR(50),
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

-- 10. Feedback
CREATE TABLE Feedback (
    feedback_id INT PRIMARY KEY,
    event_id INT,
    attendee_id INT,
    rating INT,
    comments TEXT,
    FOREIGN KEY (event_id) REFERENCES Events(event_id),
    FOREIGN KEY (attendee_id) REFERENCES Attendees(attendee_id)
);

