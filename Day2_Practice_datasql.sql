create database test;
use test;
CREATE TABLE Departments (
    DEPTNO INT PRIMARY KEY,
    DEPTNAME VARCHAR(50) not null,
    LOC VARCHAR(50)
);
INSERT INTO Departments (DEPTNO, DEPTNAME, LOC) VALUES
(10, 'ACCOUNTING', 'NEW YORK'),
(20, 'RESEARCH', 'DALLAS'),
(30, 'SALES', 'CHICAGO'),
(40, 'OPERATIONS', 'BOSTON');
select * from departments;

CREATE TABLE employees (
    EMPNO INT PRIMARY KEY,
    EMPNAME VARCHAR(50) not null,
    JOB VARCHAR(20) not null,
    MGR INT ,
    HIREDATE VARCHAR(20),  -- Alternatively, DATE if you standardize dates
    SAL DECIMAL(10, 2),
    DEPTNO INT,
    foreign key(deptno) references Departments(deptno)
);
INSERT INTO Employees (EMPNO, EMPNAME, JOB, MGR, HIREDATE, SAL, DEPTNO) VALUES
(101, 'ALEN', 'SALESMAN', 105, '2016-12-01', 100.00, 10),
(102, 'WARD', 'SALESMAN', 106, '2018-02-20', 200.00, 20),
(103, 'JONES', 'MANAGER', NULL, '2019-03-21', 300.00, 30),
(104, 'MARTIN', 'SALESMAN', 105, '2020-06-30', 400.00, 40),
(105, 'BLAKE', 'MANAGER', NULL, '2021-08-31', 500.00, 10),
(106, 'CLARK', 'MANAGER', NULL, '2021-09-20', 600.00, 20),
(107, 'SCOTT', 'ANALYST', 103, '2021-10-21', 700.00, 30),
(108, 'KING', 'PRESIDENT', NULL, '2021-06-03', 800.00, 40),
(109, 'TURNER', 'SALESMAN', 103, '2021-03-04', 900.00, 30),
(110, 'ADAM', 'CLERK', 105, '2021-07-06', 1000.00, 20),
(111, 'JAMES', 'CLERK', 106, '2021-04-15', 1100.00, 10),
(112, 'FORD', 'ANALYST', 103, '2021-11-04', 1200.00, 30),
(113, 'MILLER', 'CLERK', 105, '2021-05-05', 1300.00, 40);
-- Display all the information of the EMP table
select * from employees;

-- Display unique Jobs from EMP table?
select distinct job from employees;

-- List the emps in the asc order of their Salaries?
select * from employees order by sal asc;

-- List the details of the emps in asc order of the Dptnos and desc of Jobs?
select * from employees order by deptno asc,job desc;

-- Display all the unique job groups in the descending order?
select distinct job from employees order by job desc;

-- Display all the details of all ‘Mgrs’
select * from employees where empno in ( select mgr from employees) ;

-- List the emps who joined before 1981.
 select * from employees where hiredate <'1981-01-01';
 

select * from departments;
select * from employees;


