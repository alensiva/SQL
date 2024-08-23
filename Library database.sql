create database library;
use library;
show databases;
show tables;
CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL
);

CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_id INT NOT NULL,
    publication_year INT NOT NULL,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    membership_date DATE NOT NULL
);

CREATE TABLE Loans (
    loan_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT NOT NULL,
    user_id INT NOT NULL,
    loan_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

INSERT INTO Authors (name, country) VALUES
('George Orwell', 'United Kingdom'),
('Jane Austen', 'United Kingdom'),
('J.K. Rowling', 'United Kingdom'),
('Harper Lee', 'United States');

INSERT INTO Books (title, author_id, publication_year) VALUES
('1984', 1, 1949),
('Pride and Prejudice', 2, 1813),
('Harry Potter and the Philosopher\'s Stone', 3, 1997),
('To Kill a Mockingbird', 4, 1960);

INSERT INTO Users (name, email, membership_date) VALUES
('Alice Smith', 'alice.smith@example.com', '2023-01-15'),
('Bob Johnson', 'bob.johnson@example.com', '2023-03-22'),
('Charlie Brown', 'charlie.brown@example.com', '2023-06-10'),
('Diana Prince', 'diana.prince@example.com', '2023-08-05');

INSERT INTO Loans (book_id, user_id, loan_date, return_date) VALUES
(1, 1, '2024-08-01', NULL),
(2, 2, '2024-07-15', '2024-08-15'), 
(3, 3, '2024-08-10', NULL), 
(4, 4, '2024-08-05', '2024-08-20'); 



            
       











