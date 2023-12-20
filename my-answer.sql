-- Part 1: Creating Tables
CREATE TABLE films (
   name TEXT,
   release_year INTEGER
);

-- Part 2: Saving Our Favorite Movies
INSERT INTO films (name, release_year)
VALUES ('The Matrix', 1999),
       ('Monster’s Inc.', 2001),
       ('Call Me By Your Name', 2017);

-- Part 3: Browsing Movies
-- To find movies released in the year you were born (replace 1999 with your birth year)
SELECT * FROM films
WHERE release_year = 1999;

-- Part 4: Adding Supplementary Information
-- Adding new columns
ALTER TABLE films
ADD COLUMN runtime_minutes INTEGER,
ADD COLUMN category TEXT,
ADD COLUMN rating TEXT,
ADD COLUMN box_office_earnings BIGINT;

-- Part 5: Backfilling Data
-- Example: Backfilling data for runtime_minutes (replace 1999 with your birth year)
UPDATE films
SET runtime_minutes = 120
WHERE release_year = 1999;

-- Part 6: Adding Constraints
-- Adding a UNIQUE constraint to the name column
ALTER TABLE films
ADD CONSTRAINT unique_name UNIQUE (name);
