-- Implmentation for updating employee salaries specified by a specific salary range and increasing it by a certain percentage
-- The user can change the values of the minimum and maximum salaries along with the percentage increase which are hard-coded based off the example provided 

-- Parameters
SET salary_increase_percentage = 3.2;
SET mininum_salary = 58000;
SET maximum_salary = 105000

-- Update salary field for employees in the specified range
UPDATE Employee
SET salary = salary * (1 + salary_increase_percentage / 100)
WHERE salary >= mininum_salary AND salary < maximum_salary;

-- Select updated rows to verify changes
SELECT * FROM Employee 
WHERE salary >= mininum_salary AND salary < maximum_salary;
