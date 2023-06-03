-- 3zahq28n6

CREATE TABLE workers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    speciality VARCHAR(50) NOT NULL,
    seniority INT NOT NULL,
    salary INT NOT NULL,
    age INT NOT NULL
);

INSERT INTO workers (name, surname, speciality, seniority, salary, age) VALUES
('Вася', 'Васькин', 'начальник', 40, 100000, 60),
('Петя', 'Петькин', 'начальник', 8, 70000, 30),
('Катя', 'Каткина', 'инженер', 2, 70000, 25),
('Саша', 'Сашкин', 'инженер', 12, 50000, 35),
('Иван', 'Иванов', 'рабочий', 40, 30000, 59),
('Петр', 'Петров', 'рабочий', 20, 25000, 40),
('Сидор', 'Сидоров', 'рабочий', 10, 20000, 35),
('Антон', 'Антонов', 'рабочий', 8, 19000, 28),
('Юра', 'Юркин', 'рабочий', 5, 15000, 25),
('Максим', 'Воронин', 'рабочий', 2, 11000, 22),
('Юра', 'Галкин', 'рабочий', 3, 12000, 24),
('Люся', 'Люськина', 'уборщик', 10, 10000, 49);

-- SELECT * FROM workers ORDER BY salary;
-- SELECT * FROM workers ORDER BY salary desc;
-- .
-- SELECT * FROM
--  (SELECT * FROM workers ORDER BY salary desc LIMIT 5) AS fstfive
--  ORDER BY salary;
-- .
SELECT speciality, SUM(salary) AS sumsalary 
  FROM workers 
  GROUP BY speciality HAVING sumsalary>100000;
