ALTER TABLE Users
ADD age INT;


ALTER TABLE Users
ADD (
    gender VARCHAR(10),
    city VARCHAR(50)
);

ALTER TABLE Users
RENAME COLUMN phone TO mobile;

ALTER TABLE Users
MODIFY COLUMN email VARCHAR(100) NOT NULL UNIQUE;

ALTER TABLE Users
DROP COLUMN age;

ALTER TABLE Users
DROP COLUMN city;

ALTER TABLE Users
RENAME TO Customers;

ALTER TABLE Users
ADD CONSTRAINT unique_email UNIQUE (email);

ALTER TABLE Orders
ADD CONSTRAINT fk_user FOREIGN KEY (user_id)
REFERENCES Users(user_id);

ALTER TABLE Users
DROP CONSTRAINT unique_email;

ALTER TABLE Users
ADD CONSTRAINT check_email CHECK (email LIKE '%@%.%');

SELECT department, AVG(salary)
FROM Employees
GROUP BY department;

