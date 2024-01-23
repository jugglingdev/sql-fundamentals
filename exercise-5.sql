CREATE TABLE Courses (
    CourseID int,
    CourseName varchar(255),
    Department varchar(255),
    Credits int
);

INSERT INTO Courses
VALUES (101, 'Introduction to Psychology', 'Psychology', 3), 
       (102, 'Principles of Economics', 'Economics', 4),
       (103, 'Introduction to Computer Science', 'Computer Science', 3);

SELECT CourseName, Department
FROM Courses;