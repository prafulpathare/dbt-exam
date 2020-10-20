select emp.ename, dept.dname from emp inner join dept on emp.deptno = dept.deptno;

select ename, sal+300 from emp where comm is null or comm = 0;

select ename from emp where to_char(hiredate , 'MM') = '02';
select ename from emp where to_char(hiredate , 'Mon') = 'Feb';

select ename from emp where months_between(sysdate, hiredate)/12 > 12;

select round(sal, -3) from emp
select last_day(hiredate) from emp


-- where job is CLERK and hiredate is > 01-Jan-81
select count(*) from emp where job = 'CLERK' and to_date(hiredate, 'DD-Mon-YY') > to_date('01-Jan-81', 'DD-Mon-YY');

select ename, sal from emp where sal = (select min(sal) from emp)

select round(months_between(sysdate, hiredate)) from emp;

select m.ename from emp e, emp m where e.mgr = m.empno and m.deptno != 30;

-- hiredatte = last day of month
select ename from emp where hiredate = last_day(hiredate);

select ename, dname from emp right join dept on emp.deptno = dept.deptno



-- strings
select substr(ename, 1, 3) from emp;
select lpad(ename, 15) from emp;
select replace (ename, 'A', 'a') from emp;
select initcap(ename) from emp;
select instr(ename, 'AR') from emp;
