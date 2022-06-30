
-- CREATE TABLE BOOK

CREATE TABLE IF NOT EXISTS book (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    publisher varchar(40),
    cover_state varchar(40),
    publish_date date,
    archived bool
);

CREATE TABLE label (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    title varchar(40),
    color varchar(40)
);

ALTER TABLE book
ADD COLUMN label INT,
ADD FOREIGN KEY (id) REFERENCES label(id),
ADD COLUMN genre INT,
ADD FOREIGN KEY (id) REFERENCES genre(id),
ADD COLUMN author INT,
ADD FOREIGN KEY (id) REFERENCES author(id);