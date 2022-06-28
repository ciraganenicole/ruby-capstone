
-- CREATE TABLE BOOK

CREATE TABLE IF NOT EXISTS book (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    publisher varchar(40),
    cover_state varchar(40),
    archived bool
);

CREATE TABLE label (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    title varchar(40),
    color varchar(40)
);

ALTER TABLE book
ADD COLUMN label INT,
ADD FOREIGN KEY (label_id) REFERENCES label(id),
ADD COLUMN genre INT,
ADD FOREIGN KEY (genre_id) REFERENCES genre(id),
ADD COLUMN author INT,
ADD FOREIGN KEY (author_id) REFERENCES author(id),
ADD COLUMN cource INT,
ADD FOREIGN KEY (cource_id) REFERENCES cource(id);