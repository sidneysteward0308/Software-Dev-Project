-- Add SSN column to Employee table
ALTER TABLE Employee
ADD COLUMN ssn VARCHAR(9);

-- Update salary and months worked for an employee with a specific ID
UPDATE Employee
SET salary = 60000, months_worked = 24
WHERE employee_id = 101;

-- Update salary for employees within the specified salary range (between 58000 and 105000)
UPDATE Employee
SET salary = salary * (1 + 3.2 / 100)
WHERE salary >= 58000 AND salary < 105000;

-- Select updated rows to verify the changes
SELECT * FROM Employee
WHERE salary >= 58000 AND salary < 105000;
