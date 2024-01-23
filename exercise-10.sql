CREATE TABLE WeatherData (
    RecordID int,
    Date date,
    Temperature float,
    City varchar(255)
);

INSERT INTO WeatherData
VALUES (1, '2022-01-01', 35.2, 'Springfield'),
       (2, '2022-01-01', 28.4, 'Shelbyville');

SELECT MAX(Temperature), MIN(Temperature)
FROM WeatherData;