SELECT * FROM classicmodels.employees;
Displaying employees full name  and their email arraging them by office code 1.
SELECT jobtitle, UCASE(CONCAT(lastname, " ", firstname)) as employeesname, email
fROM employees WHERE officecode='1' ORDER BY JOBTITLE ASC;
Display employees name as full name
SELECT employeenumber, UCASE(CONCAT(lastname, " ", firstname)) 
as employeesname, extension, email, reportsto, jobtitle, officecode fROM employees;
Show the full office address and phone number for each employee.
SELECT employeenumber,lastname,firstname,offices.officecode,offices.phone,offices.city,extension
from employees 
JOIN offices ON offices.officecode=employees.officecode;
Joining the phone number and extension also first name and last name
SELECT employeenumber, CONCAT(lastname," ",firstname) AS employeename,
CONCAT(offices.phone," ",extension) AS employeePhonenumber,
offices.officecode,offices.city
from employees 
JOIN offices ON offices.officecode=employees.officecode;
INNER JOIN values on both tables must exist fo both to be displyed
LEFT JOIN means values that exist on left table will show up
RIGHT JOIN means values that exist on right table will show up
FULL OUTER JOIN means you want to maintain all the rows from the right anf left table
SELF JOIN
how a list of employees with the name & employee number of their manager.
select E.employeeNumber, 
	E.firstName, 
    E.lastName, 
    M.employeeNumber as managerEmployeeNumber, 
    CONCAT(M.firstName, " ", M.lastName) as managerName
    from employees E LEFT JOIN employees M ON E.reportsTo=M.employeeNumber;