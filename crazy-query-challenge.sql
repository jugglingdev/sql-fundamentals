CREATE TABLE Applicants (
    ApplicantID int,
    FirstName varchar(255),
    LastName varchar(255),
    DateOfBirth date,
    CountryOfBirth varchar(255),
    Ethnicity varchar(255),
    GroupID int
);

CREATE TABLE Groups (
    GroupID int,
    GroupName varchar(255),
    PrincipalApplicantID int
);

CREATE TABLE Passports (
    PassportID varchar(255),
    ApplicantID int,
    IssueDate date,
    ExpirationDate date,
    PassportCountry varchar(255)
);

CREATE TABLE BorderPasses (
    BorderPassID int,
    ApplicantID int,
    IssueDate date,
    ExpirationDate date,
    BorderPassCountry varchar(255)
);

CREATE TABLE Flights (
    FlightID int,
    TakeOffCity varchar(255),
    Destination varchar(255),
    DateOfArrival date
);

INSERT INTO Applicants
VALUES (1, 'Alice', 'Johnson', '1992-01-01', 'United States', 'Hazara', 1),
       (2, 'Amanda', 'Johnson', '2023-01-01', 'United States', 'Hazara', 1),
       (3, 'Alex', 'Johnson', '1992-01-01', 'United States', 'Hazara', 1),
       (4, 'Bob', 'Smith', '1992-01-01', 'United States', 'Pashtun', 2),
       (5, 'Billie', 'Smith', '1992-01-01', 'United States', 'Pashtun', 2),
       (6, 'Will', 'Collins', '1992-01-01', 'Canada', 'Hazara', 3),
       (7, 'Meagan', 'Delfino', '2002-01-01', 'Canada', 'Hazara', 3);
       
INSERT INTO Groups
VALUES (1, 'Johnson Family', 3),
       (2, 'Smith Family', 4),
       (3, 'Collins Family', 6);
       
INSERT INTO Passports
VALUES ('A18FJDK', 1, '2024-01-01', '2026-01-01', 'United States'),
       ('A23FJTK', 3, '2024-01-01', '2026-01-01', 'United States'),
       ('B19FJDC', 4, '2023-01-01', '2025-01-01', 'United States'),
       ('C18FJDK', 5, '2024-03-03', '2026-03-03', 'United States'),
       ('D23FJTK', 7, '2024-05-01', '2026-05-01', 'United States');
       
INSERT INTO BorderPasses
VALUES (1384729, 6, '2023-01-01', '2025-01-01', 'Canada');

INSERT INTO Flights 
VALUES (1, 'CityA', 'CityB', '2024-02-01'),
       (2, 'CityC', 'CityD', '2024-03-01');

SELECT
    FirstName,
    LastName,
    DateOfBirth,
    Ethnicity,
    Groups.GroupID AS GroupID,
    PassportID,
    Passports.ExpirationDate AS PassportExpirationDate,
    BorderPassID,
    BorderPasses.ExpirationDate AS BorderPassExpirationDate
FROM Applicants
LEFT JOIN GROUPS ON Applicants.GroupID = Groups.GroupID
LEFT JOIN Passports ON Applicants.ApplicantID = Passports.ApplicantID
LEFT JOIN BorderPasses ON Applicants.ApplicantID = BorderPasses.ApplicantID
LEFT JOIN Flights ON Flights.DateOfArrival > CURRENT_DATE

WHERE (Passports.ExpirationDate IS NOT NULL AND Passports.ExpirationDate > Flights.DateOfArrival)
    OR (Passports.ExpirationDate IS NULL AND DateOfBirth > DATE(Flights.DateOfArrival, '-2 years'))
    
GROUP BY
    Applicants.ApplicantID,
    Groups.GroupID
    
HAVING Ethnicity = 'Hazara'
    
ORDER BY 
    PassportExpirationDate,
    BorderPassExpirationDate

LIMIT 10;
