# Student Database Project - Part 1

This README provides an overview of the "Student Database" project from [freeCodeCamp's Relational Database Certification](https://www.freecodecamp.org/learn/relational-database/learn-sql-by-building-a-student-database-part-1/build-a-student-database-part-1). This project guides you through creating a relational database to manage students, their courses, and related data.

---

## Project Overview
The goal of this project is to design and build a structured relational database to store and manage data about students, their majors, and the courses they enroll in. By the end of this project, you'll have hands-on experience with creating tables, managing relationships, and writing SQL queries to interact with the database.

### Skills Covered:
- Creating and altering tables
- Managing primary and foreign keys
- Normalizing data
- Handling many-to-many relationships
- Writing SQL for inserting, updating, and querying data

---

## Project Requirements
This project uses PostgreSQL as the relational database management system. Ensure you have the following installed:

- PostgreSQL
- `psql` command-line interface

---

## Step-by-Step Instructions

### 1. Setting Up the Database
1. **Create the database**:
   ```sql
   CREATE DATABASE students;
   \c students
   ```

2. **Set up tables**:
   - `students`
   - `majors`
   - `courses`
   - `majors_courses`

### 2. Creating the Tables
Here are the SQL commands to create the required tables:

#### Students Table
```sql
CREATE TABLE students (
  student_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  major_id INT,
  gpa NUMERIC(3, 2)
);
```

#### Majors Table
```sql
CREATE TABLE majors (
  major_id SERIAL PRIMARY KEY,
  major VARCHAR(50) NOT NULL
);
```

#### Courses Table
```sql
CREATE TABLE courses (
  course_id SERIAL PRIMARY KEY,
  course VARCHAR(50) NOT NULL
);
```

#### Majors-Courses Table
```sql
CREATE TABLE majors_courses (
  major_course_id SERIAL PRIMARY KEY,
  major_id INT NOT NULL REFERENCES majors(major_id),
  course_id INT NOT NULL REFERENCES courses(course_id)
);
```

### 3. Inserting Data
Use the following SQL commands to populate the tables with initial data.

#### Insert Majors
```sql
INSERT INTO majors (major) VALUES ('Database Administration'), ('Web Development'), ('Data Science');
```

#### Insert Courses
```sql
INSERT INTO courses (course) VALUES ('Data Structures and Algorithms'), ('Web Programming'), ('Database Systems');
```

#### Associate Majors with Courses
```sql
INSERT INTO majors_courses (major_id, course_id)
VALUES
  (1, 1),
  (1, 3),
  (2, 2),
  (3, 1);
```

#### Insert Students
```sql
INSERT INTO students (first_name, last_name, major_id, gpa)
VALUES
  ('Rhea', 'Kellems', 1, 3.8),
  ('Kimberly', 'Whitley', 2, 3.5),
  ('Jimmy', 'Felipe', 3, 3.9);
```

### 4. Querying the Database
Practice querying the database to retrieve meaningful information:

#### Example Queries
- List all students and their majors:
  ```sql
  SELECT first_name, last_name, major FROM students
  LEFT JOIN majors ON students.major_id = majors.major_id;
  ```

- List all courses for a specific major:
  ```sql
  SELECT major, course FROM majors_courses
  INNER JOIN majors ON majors_courses.major_id = majors.major_id
  INNER JOIN courses ON majors_courses.course_id = courses.course_id
  WHERE major = 'Database Administration';
  ```

---





Happy coding!

