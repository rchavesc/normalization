\c library


CREATE TABLE patrons(patron_id SERIAL PRIMARY KEY,
name VARCHAR(50));

CREATE TABLE authors(author_id SERIAL PRIMARY KEY,
name VARCHAR(50));

CREATE TABLE books(autho_id INT NOT NULL REFERENCES authors(author_id),
patron_id INT NOT NULL REFERENCES patrons(patron_id),
book_id SERIAL PRIMARY KEY,
title VARCHAR(70),
press VARCHAR(50),
checkin DATE);

