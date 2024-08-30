SELECT * 
FROM employee
ORDER BY sex, first_name, last_name;

SELECT first_name AS FIRSTNAME, last_name AS LASTNAME
FROM employee; 

--find all the different gender in the table
SELECT DISTINCT sex 
FROM employee;


SELECT  COUNT(emp_id)  
FROM employee
WHERE sex = 'f' AND birth_day > '1970-01-01';


SELECT COUNT(sex),sex
FROM employee
GROUP BY sex;

-- find the total sales for eash salesman
SELECT SUM(total_sales),emp_id
FROM works_with
GROUP BY emp_id;

-- find a list of employee and branch names
SELECT first_name
FROM employee
UNION
SELECT branch_name
FROM branch;

select * from branch;



-- find all branches and the name of their manager

SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch 
ON employee.emp_id = branch.mgr_id;

SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
INNER JOIN branch 
ON employee.emp_id = branch.mgr_id;

SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch 
ON employee.emp_id = branch.mgr_id;


SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch 
ON employee.emp_id = branch.mgr_id;


/* find names of all employees who have sold over 30000 to a single client*/
SELECT employee.first_name,employee.last_name
FROM employee
WHERE employee.emp_id IN (

    SELECT works_with.emp_id
    FROM works_with
    WHERE works_with.total_sales > 30000

);

-- find all clients who are handled by the branch 
-- that Michael Scott managers 
-- Assume you Know Michael's ID

SELECT client.client_name
FROM client
WHERE client.branch_id = (

    SELECT branch.branch_id
    FROM branch
    WHERE branch.mgr_id = 102
    LIMIT 1
);

