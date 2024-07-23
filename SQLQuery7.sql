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


--Lab 8
select distinct product from sales_data
insert into sales_data values ('Asia','Watch', 1800 ,2023)
insert into sales_data values ('North America ','TV', 900, 2024)
insert into sales_data values ('Europe','Mobile',1200,2023)
insert into sales_data values ('Europe','Watch ',2000 ,2024)
insert into sales_data values ('Asia','Mobile', 1000 ,2024)
insert into sales_data values ('North America','Mobile', 1600, 2023)
insert into sales_data values ('Europe','TV ',1500 ,2023)
insert into sales_data values ('Asia ','TV ',1100 ,2024)
insert into sales_data values ('North America','Watch', 1700, 2024)

--truncate table sales_data
--part a
--1. Display Total Sales Amount by Region.
select region,sum(sales_amount) from sales_data group by region
--2. Display Average Sales Amount by Product
select product,avg(sales_amount) from sales_data group by product
--3. Display Maximum Sales Amount by Year
select year,max(sales_amount) from sales_data group by year
--4. Display Minimum Sales Amount by Region and Year
select region,year,min(sales_amount) from sales_data group by region,year
--5. Count of Products Sold by Region
select region,count(product) from sales_data group by region

--6. Display Sales Amount by Year and Product
select YEAR,product,sum(sales_amount) from sales_data group by YEAR,product

--7. Display Regions with Total Sales Greater Than 5000
select region,sum(sales_amount) from sales_data group by region having sum(sales_amount)>5000

--8. Display Products with Average Sales Less Than 10000
select product,avg(sales_amount) from sales_data group by product having AVG(sales_amount)<10000

--9. Display Years with Maximum Sales Exceeding 500
select year,max(sales_amount) from sales_data group by year having max(sales_amount)>500

--10. Display Regions with at Least 3 Distinct Products Sold.
select region,count(distinct product) from sales_data group by region having count(distinct product)>=3

--11. Display Years with Minimum Sales Less Than 1000
select year,min(sales_amount) from sales_data group by year having min(sales_amount)<1000

--12. Display Total Sales Amount by Region for Year 2023, Sorted by Total Amount
select region,sum(sales_amount) from sales_data where year=2023 group by region 


--Part – B:
--1. Display Count of Orders by Year and Region, Sorted by Year and Region
select YEAR,region,sum(sales_amount) from sales_data group by year,region order by year ,region 

--2. Display Regions with Maximum Sales Amount Exceeding 1000 in Any Year, Sorted by Region
select region,max(sales_amount)from sales_data group by region having Max(sales_amount) >1000 order by region

--3. Display Years with Total Sales Amount Less Than 1000, Sorted by Year Descending
select year,sum(sales_amount) from sales_data group by year having sum(sales_amount) <1000 order by year desc

--4. Display Top 3 Regions by Total Sales Amount in Year 2024
select top 3 region,sum(sales_amount) from sales_data where year=2024 group by region 

--Part – C:
--1. Display Products with Average Sales Amount Between 1000 and 2000, Ordered by Product Name
select product,avg(sales_amount) from sales_data group by product 
having avg(sales_amount)>=1000 and avg(sales_amount)<=2000 
order by product
--2. Display Years with More Than 5 Orders from Each Region
select year,region,count(product) from sales_data  group by year,region having count(product)>5

--3. Display Regions with Average Sales Amount Above 1500 in Year 2023 sort by amount in descending.
select region,avg(sales_amount) from sales_data where year=2023
group by region having avg(sales_amount)>1500
order by avg(sales_amount) desc

--4. Find out region wise duplicate product.
select region,count(product) from sales_data group by region having count(product) >1

--5. Find out region wise highest sales amount.select region,max(sales_amount) from sales_data group by region--Lab 6--Part – A:
--1. Display the result of 5 multiply by 30.
select 5 * 30
--2. Find out the absolute value of -25, 25, -50 and 50.
select abs(-25) ,abs(25), abs(-50), abs(-50) 

--3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
select CEILING(25.2),CEILING(25.7),CEILING(-25.2)
--4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
select FLOOR(25.2),FLOOR(25.7),FLOOR(-25.2)
--5. Find out remainder of 5 divided 2 and 5 divided by 3.
select 5%2,5%3
--6. Find out value of 3 raised to 2nd power and 4 raised 3rd power.
select power(3,2),power(4,3)
--7. Find out the square root of 25, 30 and 50.
select sqrt(25),sqrt(30),sqrt(50)

--8. Find out the square of 5, 15, and 25.
select square(5),square(15),square(25)
--Computer Science & Engineering
--A.Y. 2024-25 | Semester - III
--Lab Manual
--2301CS302 – Database Management System - I
--Page 7 of 15
--9. Find out the value of PI.
select pi()
--10. Find out round value of 157.732 for 2, 0 and -2 decimal points.
select ROUND(157.732,2),ROUND(157.732,0),ROUND(157.732,-2)
--11. Find out exponential value of 2 and 3.
--12. Find out logarithm having base e of 10 and 2.
--13. Find out logarithm having base b having value 10 of 5 and 100.
--14. Find sine, cosine and tangent of 3.1415.
--15. Find sign of -25, 0 and 25.
--16. Generate random number using function.