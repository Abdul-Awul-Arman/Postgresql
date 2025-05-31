-- Active: 1748083052040@@127.0.0.1@5432@ph
CREATE Table "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);
-- Deletion constraint on DELETE user
-- Restrict Deletion -> ON DELETE RESTRICT / ON DELETE NO ACTION (default)
-- Cascading Deletion -> ON DELETE CASCADE
-- Setting NULL -> ON DELETE SET NULL
-- Set Default value -> ON DELETE SET DEFAULT
CREATE Table post(
    id SERIAL PRIMARY KEY,
    title  text not NULL,
    user_id INTEGER REFERENCES "user"(id)  ON Delete set CASCADE
)

INSERT INTO "user"(username)VALUES ('aksh'),('batsh'),('sagor'),('nodi');

INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️', 2),
('Batash just shared an amazing recipe! 🍲', 1),
('Exploring adventures with Sagor.🌟', 4),
('Nodi''s wisdom always leaves me inspired. 📚', 4);

ALTER TABLE post 
    alter column user_id set NOT NULL;

DROP TABLE post;
DROP Table "user";


DELETE FROM "user" WHERE id=4;

SELECT * FROM "user";
SELECT * FROM post;