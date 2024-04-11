---

# Personal Health Record Management System

## Overview

This project is a Personal Health Record (PHR) management system developed using Java EE servlets, JSP, and MySQL database. The system enables users to securely store, manage, and access their personal health information online. It provides features for adding medical records, scheduling appointments, setting reminders, and tracking health metrics.

## Features

- **User Authentication:** Secure user authentication and authorization system for accessing personal health records.
  
- **Medical Records Management:** Ability to add, view, edit, and delete medical records such as doctor visits, prescriptions, test results, and treatments.

- **Appointment Scheduling:** Functionality for scheduling appointments with healthcare providers, including date, time, and reason for the appointment.

- **Reminders and Alerts:** Set reminders for medication schedules, follow-up appointments, and health-related tasks.

- **Health Metrics Tracking:** Track health metrics such as weight, blood pressure, blood sugar levels, and other vital signs over time.

## Technologies Used

- **Java EE Servlets:** Backend logic and request handling.
- **JSP (JavaServer Pages):** Dynamic web pages for presentation and user interface.
- **MySQL Database:** Data storage and management.
- **HTML, CSS, JavaScript:** Frontend development for user interface and interactivity.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/phr-management-system.git
   ```

2. Set up the MySQL database:
   - Create a new MySQL database and import the provided SQL schema file (`database.sql`).

3. Configure database connection:
   - Update the database connection settings in the `config.properties` file.

4. Deploy the application:
   - Deploy the WAR file to a Java EE-compliant application server (e.g., Apache Tomcat).

## Usage

1. Access the website:
   - Open a web browser and navigate to the URL where the application is deployed.

2. Register/Login:
   - Create a new account or log in using existing credentials.

3. Manage Personal Health Records:
   - Add, view, edit, or delete medical records and appointments.

4. Set Reminders:
   - Set reminders for medication schedules, appointments, and health-related tasks.

5. Track Health Metrics:
   - Record and monitor health metrics such as weight, blood pressure, and blood sugar levels.

## Demo Images


### User Authentication
![image](https://github.com/Anands001/phr-project/assets/110816114/ed4d6f89-ee08-4e25-a7d2-58577205c63c)
![image](https://github.com/Anands001/phr-project/assets/110816114/59f79781-a2cd-4cd8-996d-de1a8bc5e367)
- The user authentication feature allows customers to create accounts and log in securely.

### Home Page
![image](https://github.com/Anands001/phr-project/assets/110816114/494cbbab-b466-4a74-9882-08e640544209).
![image](https://github.com/Anands001/phr-project/assets/110816114/e6e9b809-df9f-4c83-b34c-ff194c9ad73b)
- The user can view stored records and available doctors for appointment and sheduled appointments

### Personal Health Records
![image](https://github.com/Anands001/phr-project/assets/110816114/6bc4e327-8f6b-4919-a8d4-4d030966be86)
![image](https://github.com/Anands001/phr-project/assets/110816114/ba0e51f1-f6a8-466b-adb7-6437185f52ad)
![image](https://github.com/Anands001/phr-project/assets/110816114/ac454077-083c-4cdb-ba21-5b0925a2dac4)
- The user can add, edit and view their medical records

### Doctors
![image](https://github.com/Anands001/phr-project/assets/110816114/a9bc7bb5-45b6-4653-bd1e-706cb7fcff86)
![image](https://github.com/Anands001/phr-project/assets/110816114/8eaf9523-0bf3-4d49-aa03-ad93a5de9bfb)
- The user can View and book Appointments

## License

This project is licensed under the [MIT License](LICENSE).

---
