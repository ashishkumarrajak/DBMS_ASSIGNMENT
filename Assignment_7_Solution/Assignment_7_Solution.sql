--1
SELECT Student_Name
FROM Student
WHERE Department_id = (
    SELECT Department_id
    FROM Student
    WHERE Student_id = '23105128004'
);
--2
SELECT Student_Name
FROM Student
WHERE Gender = (
    SELECT Gender
    FROM Student
    WHERE Student_id = '23157128054'
);
--3
SELECT Student_Name
FROM Student
WHERE Department_id = (
    SELECT Department_id
    FROM Student
    WHERE Student_id = '23101128001'
);
--4
SELECT Student_Name
FROM Student
WHERE Department_id IN (
    SELECT Department_id
    FROM Student
    WHERE Gender = 'F'
);
--5
SELECT Student_Name
FROM Student
WHERE Student_id IN (
    SELECT Student_id
    FROM Enrollment
);
--6
SELECT Student_Name
FROM Student
WHERE Student_id IN (
    SELECT E.Student_id
    FROM Enrollment E
    WHERE E.Course_id IN (
        SELECT Course_id
        FROM Course
    )
);
--7
SELECT Course_Name
FROM Course
WHERE Credits > (
    SELECT AVG(Credits)
    FROM Course
);
--8
SELECT Student_Name
FROM Student
WHERE Student_id > (
    SELECT AVG(Student_id)
    FROM Student
);

--9
SELECT Department_id
FROM Student
GROUP BY Department_id
HAVING COUNT(*) > (
    SELECT AVG(COUNT(*))
    FROM Student
    GROUP BY Department_id
);

--10
SELECT Student_Name
FROM Student
WHERE Student_id IN (
    SELECT Student_id
    FROM Enrollment
);
--11

SELECT Student_Name
FROM Student
WHERE Department_id IS NOT NULL;

--12

SELECT Course_Name
FROM Course
WHERE Course_id IN (
    SELECT Course_id
    FROM Enrollment
);

--13
SELECT Course_Name
FROM Course
WHERE Credits = (
    SELECT MAX(Credits)
    FROM Course
);

--14
SELECT Student_Name
FROM Student
WHERE Student_id IN (
    SELECT Student_id
    FROM Enrollment
    GROUP BY Student_id
    HAVING COUNT(*) > 1
);

--15
SELECT Department_id
FROM Student
GROUP BY Department_id
HAVING COUNT(*) = (
    SELECT MAX(COUNT(*))
    FROM Student
    GROUP BY Department_id
);

--16
SELECT Student_Name
FROM Student
WHERE Student_id IN (
    SELECT Student_id
    FROM Enrollment
    WHERE Course_id IN (
        SELECT Course_id
        FROM Enrollment
        WHERE Student_id = '23157128054'
    )
);

--17
SELECT Student_Name
FROM Student
WHERE Student_id NOT IN (
    SELECT Student_id
    FROM Enrollment
);

--18
SELECT Course_Name
FROM Course
WHERE Course_id NOT IN (
    SELECT Course_id
    FROM Enrollment
);