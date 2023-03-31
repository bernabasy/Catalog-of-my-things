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

-- Create Genre table
CREATE TABLE genre (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(255)
);

-- Create Music Album table
CREATE TABLE music_album (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  on_spotify BOOLEAN,
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

-- Create Game table
CREATE TABLE game (
    id SERIAL PRIMARY KEY,
    multiplayer BOOLEAN,
    last_played_at date,
    publish_date date,
    archived BOOLEAN
);

-- Create Author table
CREATE TABLE author (
    id SERIAL PRIMARY KEY,
    first_name varchar(255),
    last_name varchar(255)
);
