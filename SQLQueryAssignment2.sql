CREATE DATABASE ExerciseDb
USE ExerciseDb


CREATE TABLE Publisher (
    PID INT PRIMARY KEY,
    PublisherName NVARCHAR(50) UNIQUE NOT NULL
);


CREATE TABLE Category (
    CID INT PRIMARY KEY,
    Category NVARCHAR(50) UNIQUE NOT NULL
);


CREATE TABLE Author (
    AID INT PRIMARY KEY,
    AuthorName NVARCHAR(50) UNIQUE NOT NULL
);


CREATE TABLE Book (
    BID INT PRIMARY KEY,
    BName NVARCHAR(50) NOT NULL,
    BPrice DECIMAL(10, 2),
    Author INT REFERENCES Author(AID),
    Publisher INT REFERENCES Publisher(PID),
    Category INT REFERENCES Category(CID)
);

INSERT INTO Publisher (PID, PublisherName) VALUES
  (1, 'McGraw Hill Education '),
  (2, 'Simon & Schuster'),
  (3, ' Wiley');

-- Insert records into Category
INSERT INTO Category (CID, Category) VALUES (1, 'Fiction');
INSERT INTO Category (CID, Category) VALUES (2, 'Science Fiction');
INSERT INTO Category (CID, Category) VALUES (3, 'Mystery');

-- Insert records into Author
INSERT INTO Author (AID, AuthorName) VALUES (1, 'A.K Rawat');
INSERT INTO Author (AID, AuthorName) VALUES (2, 'John Smith');
INSERT INTO Author (AID, AuthorName) VALUES (3, 'Auugtya Here');

-- Insert records into Book
INSERT INTO Book (BID, BName, BPrice, Author, Publisher, Category)
VALUES (1, 'The Notebook', 19.99, 1, 1, 1);
INSERT INTO Book (BID, BName, BPrice, Author, Publisher, Category)
VALUES (2, 'Freinds', 21.99, 2, 1, 2);
INSERT INTO Book (BID, BName, BPrice, Author, Publisher, Category)
VALUES (3, 'The Peaky Blinders', 14.99, 3, 2, 3);

-- Insert more records into Book as needed

-- Display the inserted records
SELECT * FROM Publisher;
SELECT * FROM Category;
SELECT * FROM Author;
SELECT * FROM Book;