--limite de retorno

SELECT * FROM HR.EMPLOYEES a
Where rownum <= 5
order by A.SALARY desc;

--exemplo
SELECT A.EMPLOYEE_ID,
       A.FIRST_NAME,
       A.salary
    FROM HR.EMPLOYEES a
Where rownum<=10
order by a.salary desc;


--exemplo
select a.EMPLOYEE_ID,FIRST_NAME,a.salary from HR.EMPLOYEES a
Where DEPARTMENT_ID='60'
and rownum<=10
order by a.salary desc;

--exemplo
select a.EMPLOYEE_ID,FIRST_NAME,a.salary ,B.DEPARTMENT_NAME
from HR.EMPLOYEES a
inner join HR.DEPARTMENTS b
on a.DEPARTMENT_ID=b.DEPARTMENT_ID
Where a.DEPARTMENT_ID='60'
and rownum<=10
order by a.salary desc;