--A diferen�a entre o  RANK e o DENSE_RANK � que o segundo n�o salta valores ap�s classifica��es repetidas.
--usando ROW_NUMBER
SELECT ROW_NUMBER() OVER (ORDER BY A.SALARY DESC) SEQUENCIA,
        A.FIRST_NAME, 
        A.SALARY, NTILE(4) OVER (ORDER BY A.SALARY DESC) FAIXA
FROM    HR.EMPLOYEES a
ORDER  BY A.SALARY DESC;

-- usando RANK()

SELECT RANK() OVER(ORDER BY A.SALARY DESC) CLASSIFICACAO,
       A.FIRST_NAME,
       A.SALARY
       FROM HR.EMPLOYEES A
ORDER BY A.SALARY DESC;

-- usando RANK() eDENSE_RANK()
SELECT RANK() OVER(ORDER BY A.SALARY DESC) CLASSIF_GERAL,
       DENSE_RANK() OVER(ORDER BY A.SALARY DESC) CLASSIF_DENSA,
       A.FIRST_NAME,
       A.SALARY,
       A.JOB_ID 
    FROM HR.EMPLOYEES A
ORDER BY A.SALARY DESC;

--
select RANK() OVER(ORDER BY A.SALARY DESC) CLASSIF_GERAL,
       RANK() OVER(PARTITION BY A.JOB_ID  ORDER BY A.SALARY DESC) CLASSIF_GERAL_DOIS,
       A.FIRST_NAME,
       A.SALARY,
       A.JOB_ID 
    FROM HR.EMPLOYEES A
ORDER BY A.SALARY DESC;

--
select RANK() OVER(ORDER BY A.SALARY DESC) CLASSIF_GERAL,
       RANK() OVER(PARTITION BY  A.JOB_ID  ORDER BY A.SALARY DESC) CLASSIF_DENSA,
       A.FIRST_NAME,
       A.SALARY,
       A.JOB_ID 
    FROM HR.EMPLOYEES A
ORDER BY A.SALARY DESC;

--usando NTILE
SELECT   A.JOB_TITLE,
         A.MAX_SALARY, NTILE(5) OVER (ORDER BY A.MAX_SALARY DESC) FAIXA
FROM    HR.JOBS a
ORDER  BY A.MAX_SALARY DESC;

--usando NTILE
SELECT   A.FIRST_NAME, 
         A.SALARY, NTILE(4) OVER (ORDER BY A.SALARY DESC) FAIXA
FROM    HR.employees A
ORDER  BY A.SALARY DESC;