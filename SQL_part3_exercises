-- 11) Provide the name of projects in either Department number 4 or 5
SELECT pname, dnum
FROM project
WHERE dnum IN (4,5);
-- OR
SELECT pname, dnum
FROM project 
WHERE dnum = 4 OR dnum=5;
-- 12) Provide the names of employees with either a son or wife dependent
SELECT employee.Fname, employee.Lname, dependent.relationship, dependent.sex
FROM employee
INNER JOIN dependent 
ON ssn=essn
WHERE (dependent.relationship='Spouse' AND dependent.sex='F') OR dependent.relationship='Son';
-- 13) Provide the names of employees with salary between $5k and $30k
SELECT fname, salary 
FROM employee
WHERE salary BETWEEN 5000 AND 30000;
-- 14) Provide the names of employees that worked between 20 and 30 hours
SELECT employee.Fname, employee.Lname, SUM(works_on.hours) AS total_hours
FROM employee
RIGHT JOIN works_on
ON employee.ssn=works_on.essn
GROUP BY employee.Fname, employee.Lname
HAVING SUM(works_on.hours) BETWEEN 30 AND 40;
-- OR
SELECT employee.Fname, employee.Lname, SUM(works_on.hours) AS total_hours
FROM employee
RIGHT JOIN works_on
ON employee.ssn=works_on.essn
GROUP BY employee.Fname, employee.Lname
HAVING SUM(works_on.hours)>30 AND SUM(works_on.hours)<40;
-- 15) Provide the department name and project name for projects in Houston, Sugarland, or Stafford
SELECT department.dname, project.pname, plocation
FROM department
INNER JOIN project
ON department.dnumber = project.dnum
WHERE plocation='Houston' OR plocation='Sugarland' OR plocation='Stafford';
-- 16) Provide employees with A in First Name
SELECT fname, lname 
FROM employee
WHERE fname LIKE '%a%';
-- 17) Provide employees with Last Name that does not begin with W
SELECT fname, lname 
FROM employee
WHERE lname NOT LIKE 'W%';
-- 18) Provide employees with 'a' as the second letter
SELECT fname, lname 
FROM employee
WHERE fname LIKE '_a%';
-- 19) What is the average hours worked for employees in the Research department?
SELECT department.dname, AVG(works_on.hours)
FROM works_on 
INNER JOIN project
ON works_on.pno=project.pnumber
INNER JOIN department 
ON project.dnum=department.dnumber
WHERE department.dname='Research'
GROUP BY department.dname;
SELECT *
FROM works_on;
--  20) What is the total salary for employees that worked on either Product Z or X?
SELECT SUM(employee.salary) AS Total_Salary, project.pname 
FROM employee
INNER JOIN project
ON employee.Dno = project.dnum
WHERE project.pname IN ( 'ProductZ', 'ProductX')
GROUP BY project.pname;

