CREATE DATABASE libraryDB;
CREATE SCHEMA library;

CREATE TABLE library.books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(50) NOT NULL,
    publisher_year INT,
    price NUMERIC(10, 2)
);

ALTER TABLE library.books ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP;
DROP TABLE library.books;
