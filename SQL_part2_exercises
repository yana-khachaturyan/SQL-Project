-- 1) Provide the complete info on all employees. (provide only the script)
SELECT * 
FROM employee;
-- 2) What is the count of all employees?
SELECT COUNT(*) 
FROM employee;
-- 3) What is the count of all departments?
SELECT COUNT(*) 
FROM department;
-- 4) Names of employees that work for Department # 4.
SELECT fname, lname, dno  
FROM employee
WHERE dno = 4;
-- 5) Name of projects in Sugarland
SELECT * 
FROM project
WHERE plocation='Sugarland';
-- 6) Employees name and hours information (provide only the script)
SELECT fname, lname, SUM(hours) 
FROM works_on, employee 
WHERE essn=ssn
GROUP BY fname, lname;
-- 7) Employees name that don't work on Project ProductX
SELECT fname, lname 
FROM employee, project
WHERE NOT pname='ProductX' AND dno=dnum
GROUP BY fname, lname;
-- 8) Who worked the most hours? the least hours?
SELECT fname, lname, SUM(hours) 
FROM works_on, employee 
WHERE essn=ssn
GROUP BY fname, lname
ORDER BY SUM(hours) --ASC/DESC
LIMIT 1;
-- 9) Who worked the most hours in Research dept?
SELECT fname, lname, dname, SUM(hours) 
FROM works_on, employee, department 
WHERE Dno=dnumber AND essn=ssn AND dname = 'Research'
GROUP BY fname, lname, dname;
-- 10) Names of dependents for person who worked most hours in Research dept. 
SELECT fname, lname, dname, SUM(hours), dependent_name 
FROM works_on, employee, department, dependent
WHERE Dno=dnumber AND works_on.essn=ssn AND dependent.essn=ssn AND dname='Research';
GROUP BY fname, lname, dname, dependent_name;
