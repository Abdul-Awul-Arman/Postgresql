CREATE Table "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title  text not NULL,
    user_id INTEGER REFERENCES "user"(id)  ON Delete CASCADE
)

INSERT INTO "user"(username)VALUES ('aksh'),('batsh'),('sagor'),('nodi');

INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️', 2),
('Batash just shared an amazing recipe! 🍲', 1),
('Exploring adventures with Sagor.🌟', 4),
('Nodi''s wisdom always leaves me inspired. 📚', 4);

---inner join
SELECT p.title, u.username FROM post as p INNER JOIN "user" as u ON p.user_id=u.id;

INSERT INTO post(title,user_id) VALUES('This is test title',NULL);


SELECT * FROM "user" ;

---left outer join
SELECT *
 FROM post
LEFT OUTER JOIN "user" on post.user_id="user".id;

---right outer join
SELECT * FROM "post" 
RIGHT OUTER JOIN "user" on "user".id=post.user_id;

