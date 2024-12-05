SELECT * 
FROM Employee 
WHERE (first_name = 'Peter' AND last_name = 'Oyekanmi' AND emp_id = 1 AND ssn = '112233445')
   OR (first_name = 'Alex' AND last_name = 'Ng' AND emp_id = 2 AND ssn = '667788990')
   OR (first_name = 'Koi' AND last_name = 'Steward' AND emp_id = 3 AND ssn = '987654321')
   OR (first_name = 'Adi' AND last_name = 'Nair' AND emp_id = 4 AND ssn = '123456789')
   OR (first_name = 'Andy' AND last_name = 'Mean' AND emp_id = 5 AND ssn = '556677889')
   OR (first_name = 'Dominic' AND last_name = 'Stilo' AND emp_id = 6 AND ssn = '998877665');
