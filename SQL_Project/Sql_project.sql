/*create database pro;*/
use pro;

 drop table if exists dept; 
    create table dept(
    Deptno int primary key default 0,
    Dname varchar(50),
    Loc varchar(50));

insert into dept
values(10,'Accounting','New York'),
	  (20,'Research','Dallas'),
      (30,'Sales','Chicago'),
      (40,'Operations','Boston');

drop table if exists Employee;
create table Employee(
emp_no int primary key default 0,
emp_name varchar(10),
job varchar(10),
mgr int,
hiredate date ,
sal decimal(7,2),
comm decimal(7,2),
deptno int,
foreign key (deptno) references dept(Deptno));



 select * from Employee;
 
 insert into Employee
 value(7369,'Smith','Clerk',7902,'1980-12-17',800,null,20);
 
insert into Employee
 value(7499,'Allen','Salesman',7698,'1981-02-20',1600,300,30),
	  (7521,'Ward','Salesman',7698,'1981-02-22',1250,500,30),
      (7566,'Jones','Manager',7839,'1981-04-02',2975,null,20);
 
insert into Employee
 value (7654,'Martin','Salesman',7698,'1981-09-28',1250,1400,30),
       (7698,'Blake','Manager',7839,'1981-05-01',2850,null,30),
       (7782,'Clark','Manager',7839,'1981-06-09',2450,null,10),
       (7788,'Scott','Analyst',7566,'1987-06-11',3000,null,20),
       (7839,'King','President',null,'1981-11-17',5000,null,10),
       (7844,'Turner','Salesman',7698,'1981-08-09',1500,0,30),
       (7876,'Adams','Clerk',7788,'1987-07-13',1100,null,20),
       (7900,'james','Clerk',7698,'1981-03-12',950,null,30),
       (7902,'Ford','Analyst',7566,'1981-03-12',3000,null,20),
       (7934,'Miller','Clerk',7782,'1982-01-23',1300,null,10);
    
    drop table if exists student;
    create table student (
    Rno int primary key default 0,
    Sname varchar(50),
    City varchar(50),
    State varchar(50));
   
   drop table if exists Emp_log;
   create table Emp_log(
   Emp_id int,
   Log_date date,
   New_salary int,
   Action varchar(50));
    
   select * from dept;
   select * from Employee;
   select * from student;
   select * from Emp_log;
    
    
  /*1*/  
    select distinct job from employee;
  /*2*/
	select deptno,job from employee
    order by deptno ,job desc ;
    
  /*3*/  
    select distinct job,count(*) as emp from employee
    group by job
    order by job desc;
    
   /*4*/ 
    select *  from employee
    where hiredate < '1981-01-01';
    
   /*5*/ 
    select emp_no,emp_name,sal,(sal/30) as daily_sal from employee
    order by sal*12;
    
    /*6*/
    select emp_no,emp_name,sal,hiredate,
    timestampdiff(year,hiredate,Curdate()) as Exp
    from employee
    where mgr = '7839';
    
    /*7*/
    select * from employee
    where comm > sal;
    
   /*8*/
select * from employee
where job ='Clerk' or job='Analyst'
order by job desc;

/*9*/
select emp_no,emp_name,sal,(sal*12) as Ann_sal
from employee
where (sal*12)  between 22000 and 45000;

/*10*/
select * from employee
where emp_name like '____s';

/*11*/
select * from employee
where emp_no not like '78%';

/*12*/
select * from employee
where deptno = 20;

/*13*/
select e.emp_no,e.emp_name,e.hiredate,
       m.emp_no as mgr_no,e.emp_name as mgr_name,e.hiredate as mgr_hiredate
       from employee as e
       join employee as m
       on e.mgr = m.emp_no
       where e.hiredate < m.hiredate;
       
       
       select * from employee;

/*14*/
select * from employee
where deptno =20 
and job in (select distinct job from employee
             where deptno=10);
             
  /*15*/
  select * from employee
  where sal in (select distinct sal from employee
                where emp_name in ('smith','ford') 
                order by sal desc);
     
     /*16*/
     select * from employee
     where job in(select job from employee
                  where emp_name in('smith','allen'));
                
     /*17*/
    select * from employee
    where deptno = 10
    and job not in(select distinct job from employee
                where deptno = 20);
                
     /*18*/
    select * from employee
    order by sal desc
    limit 1;
    
    /*19*/
    select * from employee
    where sal in (select max(sal) from employee);
    
    select * from employee;
    
    /*20*/
    select mgr,sum(sal)as total_sale from employee
    group by mgr ;
    
    /*21*/
    select * from employee
    where emp_name like 'A%';
    
    /*22*/
    select emp_no,emp_name,job,sal from employee
    where (job,sal) in (select distinct job,min(sal) from employee
                        group by job 
                        order by job );
                        
      select * from employee;
      
      /*23*/
      select * from employee
      where sal > (select sal from employee
                   where emp_name ='blake');
                   
	/*24*/         
        drop view v1;
        
   create view v1 as
   select e.emp_name,e.job,d.Dname,d.Loc 
   from employee e
   join dept d
   on e.deptno =d.deptno;
                        
                        
	select * from v1;
       
	/*25*/  
        select * from dept;
        select * from employee;
drop procedure dep;        
      delimiter //
      create procedure dep (in x int)
begin  
	select employee.emp_name,dept.Dname
    from employee
    join dept
    on employee.deptno=dept.deptno
    where employee.deptno = x;
end //
delimiter ;

call dep(20);    


select * from student; 

/*26*/
alter table student
add column pin bigint ;   

/*27*/
alter table student
modify Sname varchar(100);
                   
select * from emp_log;
select * from employee;

/* Trigger */
drop trigger update_sal;

delimiter //
create trigger update_sal
after update on  employee
for each row
begin
   if old.sal !=new.sal then
   insert into emp_log(emp_id,Log_date,New_salary,Action)
                values(old.emp_no,now(),new.sal,'Update Salary');
    end if ;
  end//
  delimiter ;
    
  update employee 
  set sal=900
  where emp_no =7369;
                

                   