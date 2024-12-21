-- drop db: quote_app
DROP DATABASE IF EXISTS quote_app;

-- drop tables if exists: ...
DROP TABLE Users IF EXISTS;

DROP TABLE Quotes IF EXISTS;

DROP TABLE Likes IF EXISTS;

DROP TABLE Views IF EXISTS;

-- db:quote_app
CREATE DATABASE IF NOT EXISTS quote_app;

-- connect db: quote_app
USE quote_app;

-- table: Users
CREATE TABLE Users IF NOT EXISTS (
    id BIGINT UNIQUE NOT NULL AUTO_INCREMENT,
    username VARCHAR(20) NOT NULL,
    name VARCHAR(20) NOT NULL,
    password VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- table: Quotes
CREATE TABLE Quotes IF NOT EXISTS (
    id BIGINT UNIQUE NOT NULL AUTO_INCREMENT,
    quote VARCHAR(255) NOT NULL,
    author VARCHAR(100) NOT NULL,
    author_id INT NOT NULL,
    created_year INT NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (Author_id) REFERENCES Users (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- table: Likes
CREATE TABLE Likes (
    id INT NOT NULL,
    count INT NOT NULL,
    quote_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (quote_id) REFERENCES Quotes (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- table: Views
-- use table Views if required