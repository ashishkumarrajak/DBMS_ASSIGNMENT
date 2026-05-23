SELECT Student_ID AS RolllNo,
Student_Name AS Name,
Date_of_Birth AS DOB,
Gender AS Sex,  
Contact_No AS Mobile,
Department_id AS DepartmentNo
FROM Student;

SELECT Student_id AS Roll_No,
Student_Name AS Student_Name,
Department_id AS Dept_ID
FROM Student;

SELECT Faculty_id AS Faculty_id,
Faculty_Name AS Faculty_Name,
Designation AS Faculty_Designation,
Email AS Faculty_Email
FROM Faculty;

SELECT Course_id AS Course_No,
Course_Name AS Name,
Credits AS Point,  
Department_id AS Dept_id,
Faculty_id AS Fact_id
FROM Course;

SELECT Student_id AS Student_RegNo,
Course_id AS Course_No,
Semester AS Sem,  
Grade AS Point
from Enrollment;  

SELECT * FROM Student
WHERE Department_id=101;

SELECT * FROM Student WHERE Gender='F';

SELECT * FROM Faculty WHERE DESIGNATION='Assistant Professor';

SELECT * From Faculty where DEPARTMENT_ID=102;

select * FROM Course where CREDITS>=4;

SELECT * FROM STUDENT WHERE Date_of_Birth > DATE '2003-01-01';

SELECT * FROM ENROLLMENT WHERE SEMESTER = '4th';


SELECT * FROM Student ORDER BY STUDENT_NAME ASC;

SELECT * FROM Student ORDER BY DATE_OF_BIRTH DESC;

SELECT * FROM FACULTY ORDER BY DESIGNATION ASC;

SELECT * FROM COURSE ORDER BY CREDITS DESC;

SELECT * FROM STUDENT FETCH FIRST 3 ROWS ONLY;

SELECT * FROM COURSE FETCH  FIRST 5 ROWS ONLY;


SELECT STUDENT_NAME,
    EXTRACT(YEAR FROM sysdate) - EXTRACT(YEAR FROM Date_of_birth) AS AGE
FROM STUDENT;

SELECT Course_Name, Credits+1 AS UPDATED_CREDITS FROM COURSE;

SELECT 
    STUDENT_ID,
    COURSE_ID
    SEMESTER ,
    GRADE AS FINAL_GRADE
FROM ENROLLMENT;

SELECT STUDENT_NAME,
    EXTRACT(YEAR FROM DATE_OF_BIRTH) AS YEAR_OF_BIRTH
FROM STUDENT;

SELECT FACULTY_NAME,
    SUBSTR(EMAIL,INSTR(EMAIL , '@')+1) AS EMAIL_DOMAIN
FROM FACULTY;