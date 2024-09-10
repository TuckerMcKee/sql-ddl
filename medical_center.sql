DROP DATABASE IF EXISTS medical_center;

CREATE DATABASE medical_center;

\c medical_center

CREATE TABLE patients
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  diagnosis TEXT NOT NULL
);

CREATE TABLE doctors
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  specialty TEXT NOT NULL
);

CREATE TABLE visits
(
    id SERIAL PRIMARY KEY,
    patient_id INTEGER REFERENCES patients,
    doctor_id INTEGER REFERENCES doctors,
    date DATE
)