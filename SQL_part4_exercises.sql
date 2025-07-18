-- 21) Name of employees who first name start with A and order last name alphabetically
SELECT fname, lname 
FROM employee
WHERE fname LIKE 'A%'
ORDER BY lname ASC;
-- 22) Name of employees in Department number 5 and salary ordered largest to smallest
SELECT employee.fname, employee.lname, employee.salary, department.dname 
FROM employee
INNER JOIN department
ON employee.Dno = department.dnumber
WHERE department.dnumber = 5
ORDER BY salary DESC;
-- OR 
SELECT Fname, Lname, Dno, Salary
FROM employee
WHERE Dno=5
ORDER BY Salary DESC;
-- 23) Sort employee birthdates from oldest to newest and then sort first names in alphabetical order
SELECT fname, bdate 
FROM employee
ORDER BY bdate DESC, fname;
-- 24) Sort employee salaries by largest to smallest and employee last names alphabetically
SELECT lname, salary 
FROM employee
ORDER BY salary DESC, lname;
-- 25) How many male and female employees are there?
SELECT COUNT(sex) AS Total, sex 
FROM employee
GROUP BY sex;
-- 26) How many male and female dependents are there?
SELECT COUNT(Sex) AS total, sex 
FROM dependent
GROUP BY sex;
-- 27) How many projects are there for each location?
SELECT plocation, COUNT(plocation) AS projects 
FROM project
GROUP BY plocation;
-- 28) Identify the number of projects in each location and order by most to least projects
SELECT plocation, COUNT(plocation) 
FROM project
GROUP BY plocation
ORDER BY COUNT(plocation) DESC;
-- 29) Identify the number of male and female employees and order from most to least
SELECT COUNT(sex), sex 
FROM employee
GROUP BY sex
ORDER BY COUNT(sex) DESC;
-- 30) How many male and female spouses are there?
SELECT COUNT(sex), sex, relationship 
FROM dependent
WHERE relationship='Spouse'
GROUP BY sex;
-- 31) What departments pay over $50,000 to employees?
SELECT department.dname, SUM(employee.salary) 
FROM department
INNER JOIN employee
ON department.dnumber = employee.Dno
GROUP BY department.dname
HAVING SUM(salary) > 50000;
-- 32) Provide the employee SSN and number of dependents for employees with more than 1 dependent
SELECT essn, COUNT(dependent_name)
FROM dependent
GROUP BY essn
HAVING COUNT(dependent_name) > 1;
-- 33) Provide the project locations with more than 1 project
SELECT plocation, COUNT(pname) 
FROM project
GROUP BY plocation
HAVING COUNT(pname > 1);
-- 34) Get the name, birthdate, sex, and salary for each employee.
SELECT fname, bdate, sex, salary 
FROM employee;
-- a) Modify query to get only employees born after 1960.
SELECT fname, bdate, sex, salary 
FROM employee
WHERE bdate > 1960;
-- b) Modify query to group by sex for those born after 1960 (remove name and salary)
SELECT COUNT(bdate), sex 
FROM employee
WHERE bdate > 1960
GROUP BY sex;
-- c) Modify query to get the average salary for men and women employees born after 1960
SELECT AVG(salary), sex 
FROM employee
WHERE bdate > 1960
GROUP BY sex;
-- d) Modify query to get the average salary for men and women employees born after 1960 and with an average over $15,000 ranked from largest to smallest
SELECT AVG(salary), sex 
FROM employee
WHERE bdate > 1960
GROUP BY sex
HAVING AVG(salary) > 15000
ORDER BY AVG(salary);



