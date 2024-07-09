create table cricket(
  name varchar(50),
  city varchar(50),
  age int

);
select * from cricket
insert into cricket values('sachin tendulkar','mumbai',30)
insert into cricket values('rahul dravid','bombay',35)
insert into cricket values('M.S Dhoni','Jharkhand',31)
insert into cricket values('suresh raina','gujarat',30)


--1. Create table Worldcup from cricket with all the columns and data.
select *into worldcup from cricketselect*from worldcup

--2. Create table T20 from cricket with first two columns with no data.
select name,city into t20 from cricketselect*from t20

--3. Create table IPL From Cricket with No Dataselect *into ipl from cricket where 1=2select*from ipl--update operations--1. Update deposit amount of all customers from 3000 to 5000. (Use Deposit Table)
update deposit
set amount =5000
where amount=3000
select *from deposit
--2. Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table)
update borrow
set bname='CGRoad'
where cname ='anil' and bname='vrce'
select *from BORROW
--3. Update Account No of SANDIP to 111 & Amount to 5000. (Use Deposit Table)
update deposit
set ACTNO=111,AMOUNT=5000
where cname='sandip'
select * from deposit
--4. Update amount of KRANTI to 7000. (Use Deposit Table)
update deposit
set amount =7000
where cname='kranti'
select * from deposit
--5. Update branch name from ANDHERI to ANDHERI WEST. (Use Branch Table)
update branch
set bname='andheri west'
where bname='andheri'
--6. Update branch name of MEHUL to NEHRU PALACE. (Use Deposit Table)
update deposit
set bname='nehru palace'
where cname='mehul'
select *from deposit
--7. Update deposit amount of all depositors to 5000 whose account no between 103 & 107. (Use Deposit
--Table)
update deposit
set amount=5000
where ACTNO>=103 and ACTNO<=107
select *from deposit
--8. Update ADATE of ANIL to 1-4-95. (Use Deposit Table)
update deposit
set ADATE='1995-04-01'
where cname='anil'
select *from DEPOSIT
--9. Update the amount of MINU to 10000. (Use Deposit Table)
update DEPOSIT
set amount=10000
where cname='minu'
select *from DEPOSIT
--10. Update deposit amount of PRAMOD to 5000 and ADATE to 1-4-96 (Use Deposit Table)update DEPOSITset AMOUNT=5000,ADATE='1996-04-01'where cname='pramod'select*from DEPOSITselect *into employee from cricket where 1=2select *from employeeinsert into employee values('Jay Patel','rajkot',30)
insert into employee values('Rahul Dave','Baroda',35)
insert into employee values('Jeet Patel','Surat',31)
insert into employee values('Vijay Raval','rajkot',30)

--1. Create table Employee_detail from Employee with all the columns and data.
select * into employee_detail from employee
select *from employee_detail
--2. Create table Employee_data from Employee with first two columns with no data.
select name,city into employee_data from employee
select *from employee_data
--3. Create table Employee_info from Employee with no Data
select * into employee_info from employee where 1=2
select *from employee_info

--part c
--1. Insert the Data into Employee_info from Employee whose CITY is Rajkot
	insert  into employee_info 
	select *from employee where city='rajkot'
	select *from employee_info
--2. Insert the Data into Employee_info from Employee whose age is more than 32.
insert into employee_info
select*from employee where age>32
select*from employee_info