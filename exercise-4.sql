CREATE TABLE Books (
    BookID int,
    Title varchar(255),
    Author varchar(255),
    Price float
);

INSERT INTO Books
VALUES (1, 'The Great Gatsby', 'F. Scott Fitzgerald', 10.99), 
       (2, '1984', 'George Orwell', 8.99),
       (3, 'The Catcher in the Rye', 'J. D. Salinger', 7.99);

SELECT *
FROM Books;