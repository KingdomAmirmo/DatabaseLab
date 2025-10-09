/* create table users */
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    phone VARCHAR(20),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

/* insert user */
INSERT INTO Users (first_name, last_name, email, password, phone)
VALUES ('Amir', 'Mohammadi', 'amir@gmail.com', '12345hashed', '09153020458');


/* select all users */
SELECT user_id, first_name, last_name, email, phone, created_at, updated_at
FROM Users;
/* or */
SELECT *FROM Users;

/* update user */
UPDATE Users
SET phone = '09020871457'
WHERE email = 'reza@yahoo.com';

/* delete user */
DELETE FROM Users
WHERE user_id = 1;





