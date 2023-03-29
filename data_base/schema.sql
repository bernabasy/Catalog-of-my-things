-- Create Database
CREATE DATABASE catalog;

CREATE TABLE items (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  genre_id INT REFERENCES genre(id),
  author_id INT REFERENCES author(id),
  source_id INT REFERENCES source(id),
  label_id INT REFERENCES label(id),
  publish_date DATE,
  archived BOOLEAN
);

-- Create Books table
CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  publisher VARCHAR(250),
  cover_state VARCHAR(250),
  publish_date DATE,
  archived BOOLEAN 
);

-- Create Labels tables
CREATE TABLE labels (
  id SERIAL PRIMARY KEY,
  title VARCHAR(150),
  color VARCHAR(150)
);

CREATE TABLE genres (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255)
);