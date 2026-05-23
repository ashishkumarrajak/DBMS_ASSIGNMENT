CREATE TABLE Department (
    Department_id INT PRIMARY KEY,
    Department_Name VARCHAR(50),
    Office_Location VARCHAR(200)
);

CREATE TABLE Student (
    Student_id INT PRIMARY KEY,
    Name VARCHAR(50) ,
    Date_of_Birth DATE,
    Gender CHAR(1),
    Contact_No VARCHAR(15),
    Department_id INT,
    FOREIGN KEY (Department_id) REFERENCES Department(Department_id)
);
ALTER TABLE Student RENAME COLUMN Name TO Student_Name;

CREATE TABLE Faculty(
    Faculty_id INT PRIMARY KEY,
    Faculty_Name VARCHAR(100),
    Designation VARCHAR(30),
    Email VARCHAR(50),
    Department_id INT,
    FOREIGN KEY (Department_id) REFERENCES Department(Department_id)
);

CREATE TABLE Course(
    Course_id INT PRIMARY KEY,
    Course_Name VARCHAR(30),
    Credits INT,
    Department_id INT,
    Faculty_id INT,
    FOREIGN KEY (Department_id)REFERENCES Department(Department_id),
    FOREIGN KEY (Faculty_id) REFERENCES Faculty(Faculty_id)
);

CREATE TABLE Enrollment(
    Student_ID INT,
    Course_id INT,
    Semester VARCHAR(10),
    Grade VARCHAR(4),
    PRIMARY KEY(Student_id,Course_id),
    FOREIGN KEY (Student_id) REFERENCES Student(Student_id),
    FOREIGN KEY (Course_id) REFERENCES Course(Course_id)
);
