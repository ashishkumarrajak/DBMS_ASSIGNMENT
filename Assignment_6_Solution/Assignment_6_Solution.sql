--1
SELECT COUNT(*) AS Total_Students
FROM Student;

--2
SELECT COUNT(*) AS Total_Faculty
FROM Faculty;

--3
SELECT COUNT(*) AS Total_Courses
FROM Course;

--4
SELECT MAX(Credits) AS Max_Credits
FROM Course;

--5
SELECT MIN(Credits) AS Min_Credits
FROM Course;

--6
SELECT Department_id, COUNT(*) AS Total_Students
FROM Student
GROUP BY Department_id;

--7
SELECT Department_id, COUNT(*) AS Total_Faculty
FROM Faculty
GROUP BY Department_id;

--8
SELECT Department_id, COUNT(*) AS Total_Courses
FROM Course
GROUP BY Department_id;

--9
SELECT Semester, COUNT(*) AS Total_Enrollments
FROM Enrollment
GROUP BY Semester;

--10
SELECT Grade, COUNT(*) AS Total_Students
FROM Enrollment
GROUP BY Grade;

--11
SELECT Department_id, COUNT(*) AS Total_Students
FROM Student
GROUP BY Department_id
HAVING COUNT(*) > 3;

--12
SELECT Semester, COUNT(*) AS Total_Enrollments
FROM Enrollment
GROUP BY Semester
HAVING COUNT(*) > 2;

--13
SELECT Grade, COUNT(*) AS Total_Students
FROM Enrollment
GROUP BY Grade
HAVING COUNT(*) > 1;

--14
SELECT Department_id, COUNT(*) AS Total_Courses
FROM Course
GROUP BY Department_id
HAVING COUNT(*) > 1;

--15
SELECT Course_id, COUNT(Student_id) AS Total_Students
FROM Enrollment
GROUP BY Course_id;

--16
SELECT Course.Course_Name, COUNT(Enrollment.Student_id) AS Total_Students
FROM Course
INNER JOIN Enrollment
ON Course.Course_id = Enrollment.Course_id
GROUP BY Course.Course_Name;

--17
SELECT Department_id, COUNT(*) AS Total_Students
FROM Student
GROUP BY Department_id;

--18
SELECT Faculty.Faculty_Name, COUNT(Course.Course_id) AS Total_Courses
FROM Faculty
INNER JOIN Course
ON Faculty.Faculty_id = Course.Faculty_id
GROUP BY Faculty.Faculty_Name;

--19
SELECT Course.Course_Name, MAX(Enrollment.Grade) AS Max_Grade
FROM Course
INNER JOIN Enrollment
ON Course.Course_id = Enrollment.Course_id
GROUP BY Course.Course_Name;

--20
SELECT Department_id, COUNT(*) AS Total_Courses
FROM Course
GROUP BY Department_id;

--21
SELECT Semester, COUNT(Student_id) AS Total_Students
FROM Enrollment
GROUP BY Semester;

--22
SELECT Course_id, COUNT(Student_id) AS Total_Students
FROM Enrollment
GROUP BY Course_id
HAVING COUNT(Student_id) > 2;
