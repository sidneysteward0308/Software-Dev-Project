CREATE TABLE Employee (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    job_title VARCHAR(100),
    division VARCHAR(100),
    salary DECIMAL(10, 2),
    months_worked INT
);

CREATE TABLE Pay_Statements (
    pay_statement_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_id INT,
    pay_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);

INSERT INTO Employee (first_name, last_name, job_title, division, salary, months_worked) VALUES
('Peter', 'Oyekanmi', 'Software Engineer', 'IT', 80000, 12),
('Alex', 'Ng', 'Data Analyst', 'Analytics', 72000, 10),
('Koi', 'Steward', 'HR Manager', 'Human Resources', 60000, 18),
('Adi', 'Nair', 'Product Manager', 'IT', 95000, 15),
('Andy', 'Mean', 'Software Engineer', 'IT', 85000, 20),
('Dominic', 'Stilo', 'Data Engineer', 'Analytics', 78000, 16),
('Mark', 'Hunt', 'HR Specialist', 'Human Resources', 55000, 8),
('Chad', 'Goodman', 'Operations Manager', 'Operations', 92000, 22),
('Will', 'Means', 'Financial Analyst', 'Finance', 75000, 13),
('Alan', 'Wake', 'Accountant', 'Finance', 65000, 10),
('Leon', 'Edwards', 'Data Scientist', 'Analytics', 90000, 9),
('Axel', 'Garcia', 'UX Designer', 'Design', 68000, 7),
('Trent', 'Forest', 'Operations Assistant', 'Operations', 50000, 5);
