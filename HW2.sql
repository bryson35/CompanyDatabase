
/*An employee signs its initials on a document ’AJ’, 
find the first and last name of the employee */
select fname, lname, "Bryson White"
from employee
where substring(fname, 1, 1) = 'A' and substring(lname, 1, 1) = 'J';

/*List the first name, last name, 
and salary of employees that work in the ’Hardware’ department.*/
SELECT DISTINCT fname, lname, salary, "Bryson White"
FROM employee
WHERE employee.dno = '7';

/*List the first name, last name, and 
salary of employees that work on ’ProductX’*/
SELECT DISTINCT fname, lname, salary, "Bryson White"
FROM employee, works_on
WHERE employee.ssn = works_on.essn AND works_on.pno = '1';

/*Company pays 5% of the salary of an employee as the 401k benefit. 
List the total amount of money that the company pays as 401k for all of its employees. 
Change the column name as total401k.*/
SELECT SUM(salary * .05) total401k, "Bryson White"
FROM employee;

/*Find the total hours that employees work on project ’ProductX’*/
SELECT SUM(hours) totalhours, "Bryson White"
FROM works_on
WHERE works_on.pno = '1';

/*List the first name, last name, department name, 
and salary of the female employee that has the highest salary*/
SELECT  fname, lname, dname, salary, "Bryson White"
FROM employee, department
WHERE salary IN (SELECT MAX(salary) FROM employee WHERE sex = 'F') AND
employee.dno = department.dnumber;






