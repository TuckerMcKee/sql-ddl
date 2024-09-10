DROP DATABASE IF EXISTS craigslist;

CREATE DATABASE craigslist;

\c craigslist

CREATE TABLE users
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE posts
(
  id SERIAL PRIMARY KEY,
  user_id INTEGER NOT NULL REFERENCES users,
  title TEXT NOT NULL,
  description TEXT,
  location TEXT NOT NULL,
  region TEXT NOT NULL
);

