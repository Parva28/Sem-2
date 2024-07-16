create table EMP(
	EID INT,
	ENAME VARCHAR(50),
	DEPARTMENT VARCHAR(50),
	SALARY INT,
	JOININGDATE DATE,
	CITY VARCHAR(50)
);
INSERT INTO EMP VALUES (101,'RAHUL','ADMIN',56000,'1990-JAN-1','RAJKOT')
INSERT INTO EMP VALUES (102,'Hardik','IT',18000,'25-Sep-90','Ahmedabad')
INSERT INTO EMP VALUES (103,'Bhavin','HR',25000,'14-May-91','Baroda')
INSERT INTO EMP VALUES (104,'Bhoomi','Admin',39000,'8-Feb-91','Rajkot')
INSERT INTO EMP VALUES (105,'Rohit','IT',17000,'23-Jul-90','Jamnagar')
INSERT INTO EMP VALUES (106,'Priya','IT',9000,'18-Oct-90','Ahmedabad')
INSERT INTO EMP VALUES (107,'Bhoomi','HR',34000,'25-Dec-91','Rajkot')

SELECT *FROM EMP

--PART A
--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
select Max(salary) as [highest],Min(salary) as lowest from emp

--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,
--respectively.
select sum(salary) as [TOTAL_Sal],avg(salary) as [average salary] from emp
--3. Find total number of employees of EMPLOYEE table.
select count(*) from emp
--4. Find highest salary from Rajkot city.
select max(salary) from emp where city = 'rajkot'
--5. Give maximum salary from IT department.
select max(salary) from emp where DEPARTMENT='it'
--6. Count employee whose joining date is after 8-feb-91.
select count(eid) from emp where JOININGDATE > '8-feb-91'
--7. Display average salary of Admin department.
select department,avg(salary) from emp group by department having department='admin'
--8. Display total salary of HR department.
select department,sum(salary) from emp group by department having department='hr'
--9. Count total number of cities of employee without duplication.
select count(distinct city) from emp
--10. Count unique departments.
select count(distinct department) from emp
--11. Give minimum salary of employee who belongs to Ahmedabad.
select min(salary) from emp where city='Ahmedabad'
--12. Find city wise highest salary.
select city,max(salary) from emp group by city
--13. Find department wise lowest salary.
select department,min(salary) from emp group by DEPARTMENT
--14. Display city with the total number of employees belonging to each city.
select city,count(eid) from emp group by city
--15. Give total salary of each department of EMP table.
select department,sum(salary) from emp group by department
--16. Give average salary of each department of EMP table without displaying the respective department
select avg(salary) from emp group by department


--Part – B:
--1. Count the number of employees living in Rajkot.
select count(eid) from emp where city='rajkot'
--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
select max(salary)-min(salary) as[difference] from emp
--3. Display the total number of employees hired before 1st January, 1991.
select count(eid) from emp where JOININGDATE>'1-jan-91'
--Part – C:
--1. Count the number of employees living in Rajkot or Baroda.
select count(eid) from emp where city='rajkot' or city='baroda'
--2. Display the total number of employees hired before 1st January, 1991 in IT department.
select count(eid) from emp where JOININGDATE>'1-jan-91' and DEPARTMENT='it' 
--3. Find the Joining Date wise Total Salaries.
select JOININGDATE,sum(salary) from emp group by JOININGDATE
--4. Find the Maximum salary department & city wise in which city name starts with ‘R’.
select city,max(salary) from emp group by city having city like'r%'

select * from sales_data
insert into sales_data values ('Europe','Mobile',1200,2023)
insert into sales_data values ('Asia',' Watch', 1800 ,2023)
insert into sales_data values ('North America ',' TV', 900, 2024)
insert into sales_data values ('Europe',' Watch ',2000 ,2024)
insert into sales_data values ('Asia',' Mobile', 1000 ,2024)
insert into sales_data values ('North America',' Mobile', 1600, 2023)
insert into sales_data values ('Europe',' TV ',1500 ,2023)
insert into sales_data values ('Asia ','TV ',1100 ,2024)
insert into sales_data values ('North America',' Watch', 1700, 2024)


--part a
--1. Display Total Sales Amount by Region.
--2. Display Average Sales Amount by Product
--3. Display Maximum Sales Amount by Year
--4. Display Minimum Sales Amount by Region and Year
--5. Count of Products Sold by Region
--6. Display Sales Amount by Year and Product
--7. Display Regions with Total Sales Greater Than 5000
--8. Display Products with Average Sales Less Than 10000
--9. Display Years with Maximum Sales Exceeding 500
--10. Display Regions with at Least 3 Distinct Products Sold.
--11. Display Years with Minimum Sales Less Than 1000
--12. Display Total Sales Amount by Region for Year 2023, Sorted by Total Amount