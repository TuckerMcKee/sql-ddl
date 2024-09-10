DROP DATABASE IF EXISTS soccer_league;

CREATE DATABASE soccer_league;

\c soccer_league

CREATE TABLE teams
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  ranking INTEGER NOT NULL
);

CREATE TABLE players
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  team_id INTEGER NOT NULL REFERENCES teams
);

CREATE TABLE referees
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE games
(
  id SERIAL PRIMARY KEY,
  season_id INTEGER NOT NULL REFERENCES seasons,
  referee_id INTEGER NOT NULL REFERENCES referees,
  home_team_id INTEGER NOT NULL REFERENCES teams,
  away_team_id INTEGER NOT NULL REFERENCES teams
);

CREATE TABLE goals
(
  id SERIAL PRIMARY KEY,
  game_id INTEGER NOT NULL REFERENCES games,
  player_id INTEGER NOT NULL REFERENCES players
);

CREATE TABLE seasons
(
  id SERIAL PRIMARY KEY,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL
);