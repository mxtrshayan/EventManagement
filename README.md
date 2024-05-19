# Event Management System

This repository contains SQL files for an Event Management System. Below are the details of the tables created for the system.

## Database Tables

1. *EventTypes*
   - Description: This table stores different types of events.
   - Columns:
     - event_type_id (INT, Primary Key)
     - event_type_name (VARCHAR)

2. *Events*
   - Description: This table stores information about events.
   - Columns:
     - event_id (INT, Primary Key)
     - event_name (VARCHAR)
     - event_type_id (INT, Foreign Key referencing EventTypes)
     - date (DATE)
     - location (VARCHAR)
     - description (TEXT)

3. *Attendees*
   - Description: This table stores information about event attendees.
   - Columns:
     - attendee_id (INT, Primary Key)
     - event_id (INT, Foreign Key referencing Events)
     - name (VARCHAR)
     - email (VARCHAR)
     - phone (VARCHAR)
     - registration_date (DATE)

4. *Speakers*
   - Description: This table stores information about event speakers.
   - Columns:
     - speaker_id (INT, Primary Key)
     - event_id (INT, Foreign Key referencing Events)
     - name (VARCHAR)
     - bio (TEXT)
     - contact_info (VARCHAR)

5. *Schedules*
   - Description: This table stores information about event schedules.
   - Columns:
     - schedule_id (INT, Primary Key)
     - event_id (INT, Foreign Key referencing Events)
     - session_name (VARCHAR)
     - start_time (TIME)
     - end_time (TIME)
     - location (VARCHAR)

6. *Venues*
   - Description: This table stores information about venues.
   - Columns:
     - venue_id (INT, Primary Key)
     - venue_name (VARCHAR)
     - address (VARCHAR)
     - capacity (INT)

7. *Registrations*
   - Description: This table stores information about event registrations.
   - Columns:
     - registration_id (INT, Primary Key)
     - attendee_id (INT, Foreign Key referencing Attendees)
     - event_id (INT, Foreign Key referencing Events)
     - registration_date (DATE)
     - payment_status (VARCHAR)

8. *Sponsors*
   - Description: This table stores information about event sponsors.
   - Columns:
     - sponsor_id (INT, Primary Key)
     - event_id (INT, Foreign Key referencing Events)
     - sponsor_name (VARCHAR)
     - contact_info (VARCHAR)
     - sponsorship_level (VARCHAR)

9. *Tasks*
   - Description: This table stores information about tasks related to events.
   - Columns:
     - task_id (INT, Primary Key)
     - event_id (INT, Foreign Key referencing Events)
     - task_description (TEXT)
     - assigned_to (VARCHAR)
     - deadline (DATE)
     - status (VARCHAR)

10. *Feedback*
    - Description: This table stores feedback from attendees.
    - Columns:
      - feedback_id (INT, Primary Key)
      - event_id (INT, Foreign Key referencing Events)
      - attendee_id (INT, Foreign Key referencing Attendees)
      - rating (INT)
      - comments (TEXT)

## Getting Started

To use this database, follow the steps below:

1. *Clone the repository*:
   ```bash
   git clone https://github.com/your-username/Event-Management.git
   cd Event-Management
