-- Active: 1748083052040@@127.0.0.1@5432@ph

SELECT * FROM person4;

ALTER Table person4

 ADD COLUMN email VARCHAR(50) DEFAULT 'default@email.com' NOT NULL;

 INSERT into person4 VALUES(5,'nur',19)

ALTER table person4
 DROP COLUMN email;

ALTER Table person4
RENAME COLUMN age to user_age;

ALTER Table person4
 alter COLUMN user_name type VARCHAR(50)


ALTER table person4
 alter COLUMN user_age set not null;

ALTER Table person4
alter COLUMN user_age drop not null;

ALTER Table person4
 ADD constraint unique_person4_user_age UNIQUE(user_age);

 ALTER Table person4
    DROP constraint unique_person4_user_age;        