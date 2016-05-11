--Question 1
Select *
From CARS_CAR_TYPES
CROSS JOIN CARS_COLORS
CROSS JOIN CARS_NUMBER_OF_DOORS;

--Question 2
SELECT e.EMPLOYEE_ID as "Employee_ID",
e.LAST_NAME as "Last_Name", 
e.FIRST_NAME as "First_Name",
e.PHONE_NUMBER as "Phone_Number",
m.LAST_NAME as "Manager Last Name", 
m.FIRST_NAME as "Manager First Name",
m.PHONE_NUMBER as "Manager Phone Number"
FROM L_EMPLOYEES e
LEFT JOIN L_EMPLOYEES m
ON m.EMPLOYEE_ID=e.MANAGER_ID
ORDER BY e.EMPLOYEE_ID;

--Question 3
select cus.customer# as customer#,
cus.firstname as LastName,
cus.lastname as FirstName,
concat(ref.firstname , ref.lastname) as REFFERRED_BY
from B_customers cus
inner join b_customers ref on  cus.customer# =ref.customer#
Where cus.referred is not null
order by customer#;

--Question 4
SELECT FIRSTNAME, LASTNAME FROM CHINOOK.CUSTOMER
UNION
SELECT FNAME, LNAME FROM BOOKSTORE.B_AUTHOR
UNION
SELECT FIRSTNAME, LASTNAME FROM BOOKSTORE.B_CUSTOMERS
UNION
SELECT FIRST_NAME, LAST_NAME FROM LUNCHES.L_EMPLOYEES
ORDER BY LASTNAME;
--Question 5
SELECT MULTIPLE_OF_2, MULTIPLE_OF_3, NVL(MULTIPLE_OF_2, MULTIPLE_OF_3)
FROM  NUMBERS_THREES
FULL JOIN NUMBERS_TWOS
ON NUMBERS_TWOS.MULTIPLE_OF_2=NUMBERS_THREES.MULTIPLE_OF_3
WHERE MULTIPLE_OF_3 IS NULL OR MULTIPLE_OF_2 IS NULL
ORDER BY NVL(MULTIPLE_OF_2, MULTIPLE_OF_3);
--Question 6
SELECT MULTIPLE_OF_2 FROM numbers.NUMBERS_TWOS
INTERSECT
SELECT MULTIPLE_OF_3 FROM numbers.NUMBERS_THREES;