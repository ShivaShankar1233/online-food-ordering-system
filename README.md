# Online Food Ordering System

This is a full-stack food ordering application developed using Spring Boot for the backend and HTML/CSS/JavaScript for the frontend, following the MVP pattern.

## Project Structure

```
online-food-ordering-system/
 ├── backend/
 │    ├── src/
 │    │    ├── main/
 │    │    │    ├── java/
 │    │    │    │    └── com/
 │    │    │    │        └── foodorder/
 │    │    │    │            ├── controller/
 │    │    │    │            ├── model/
 │    │    │    │            ├── repository/
 │    │    │    │            └── service/
 │    │    │    └── resources/
 │    │    │        ├── application.properties
 │    │    │        └── static/
 │    │    │            └── css/
 │    │    │                └── style.css
 │    │    └── test/
 │    ├── pom.xml
 │    └── README.md
 ├── frontend/
 │    ├── index.html
 │    ├── js/
 │    │    └── app.js
 │    ├── css/
 │    │    └── style.css
 └── database/
      └── schema.sql
```

## Getting Started

### Prerequisites
- Java 11 or later
- Maven
- MySQL

### Running the Application
1. Clone the repository.
2. Set up the MySQL database and run the SQL scripts in `database/schema.sql` to create the necessary tables.
3. Configure your database settings in `backend/src/main/resources/application.properties`.
4. Navigate to `backend/` and run `mvn spring-boot:run` to start the backend server.
5. Navigate to `frontend/` and open `index.html` in your web browser to access the application.

## Database Schema
The schema.sql file contains SQL statements to create tables for the food ordering application.