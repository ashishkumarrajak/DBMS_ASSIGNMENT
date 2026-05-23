--1
SELECT S.Student_id, S.Student_Name, E.Course_id
FROM Student S
INNER JOIN Enrollment E
ON S.Student_id = E.Student_id;

--2
SELECT S.Student_Name, E.Semester
FROM Student S
INNER JOIN Enrollment E
ON S.Student_id = E.Student_id;

--3
SELECT S.Student_Name, E.Grade
FROM Student S
INNER JOIN Enrollment E
ON S.Student_id = E.Student_id;

--4
SELECT C.Course_Name, C.Credits, F.Faculty_Name
FROM Course C
INNER JOIN Faculty F
ON C.Faculty_id = F.Faculty_id;

--5
SELECT C.Course_Name
FROM Course C
INNER JOIN Faculty F
ON C.Faculty_id = F.Faculty_id
WHERE F.Faculty_id = '501';

--6
SELECT F.Faculty_Name, F.Designation, C.Course_Name
FROM Faculty F
INNER JOIN Course C
ON F.Faculty_id = C.Faculty_id;

--7
SELECT S.Student_Name, C.Course_Name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_id = E.Student_id
INNER JOIN Course C
ON E.Course_id = C.Course_id;

--8
SELECT S.Student_Name, C.Course_Name, E.Semester
FROM Student S
INNER JOIN Enrollment E
ON S.Student_id = E.Student_id
INNER JOIN Course C
ON E.Course_id = C.Course_id;

--9
SELECT S.Student_Name, C.Course_Name, E.Grade
FROM Student S
INNER JOIN Enrollment E
ON S.Student_id = E.Student_id
INNER JOIN Course C
ON E.Course_id = C.Course_id
WHERE E.Semester = '4';

--10
SELECT C.Course_Name
FROM Enrollment E
INNER JOIN Course C
ON E.Course_id = C.Course_id
WHERE E.Student_id = '23157128054';

--11
SELECT S.Student_Name, S.Department_id, C.Course_Name
FROM Student S
INNER JOIN Course C
ON S.Department_id = C.Department_id;

--12
SELECT D.Department_id, D.Department_Name, C.Course_Name
FROM Department D
INNER JOIN Course C
ON D.Department_id = C.Department_id;

--13
SELECT F.Faculty_Name, D.Department_Name
FROM Faculty F
INNER JOIN Department D
ON F.Department_id = D.Department_id;

--14
SELECT S.Student_Name, C.Course_Name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_id = E.Student_id
INNER JOIN Course C
ON E.Course_id = C.Course_id
WHERE S.Department_id = '105';

--15
SELECT S.Student_Name, C.Course_Name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_id = E.Student_id
INNER JOIN Course C
ON E.Course_id = C.Course_id
ORDER BY S.Student_Name ASC;

--16
SELECT F.Faculty_Name, C.Course_Name, C.Credits
FROM Faculty F
INNER JOIN Course C
ON F.Faculty_id = C.Faculty_id
ORDER BY C.Credits DESC;

--17
SELECT C.Course_Name, COUNT(E.Student_id) AS Total_Students
FROM Course C
INNER JOIN Enrollment E
ON C.Course_id = E.Course_id
GROUP BY C.Course_Name;

--18
SELECT F.Faculty_Name, COUNT(C.Course_id) AS Total_Courses
FROM Faculty F
INNER JOIN Course C
ON F.Faculty_id = C.Faculty_id
GROUP BY F.Faculty_Name;

--19
SELECT D.Department_Name, COUNT(S.Student_id) AS Total_Students
FROM Department D
INNER JOIN Student S
ON D.Department_id = S.Department_id
GROUP BY D.Department_Name;

--20
SELECT C.Course_Name, MAX(E.Grade) AS Max_Grade
FROM Course C
INNER JOIN Enrollment E
ON C.Course_id = E.Course_id
GROUP BY C.Course_Name;