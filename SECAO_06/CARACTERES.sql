--EXEMPLOS COM ASCII
SELECT ASCII('ab') TESTE FROM SYS.DUAL
UNION ALL
SELECT ASCII('a') FROM SYS.DUAL
UNION ALL
SELECT ASCII('b') FROM SYS.DUAL;

--EXEMPLOS COM LOWER()
SELECT A.DEPARTMENT_NAME NOME_DEPTO, LOWER(A.DEPARTMENT_NAME) NOME_DEPTO_LOWER, 
    LOWER('PRATICA SQL')
FROM HR.DEPARTMENTS A;

--EXEMPLOS COM UPPER()
SELECT A.DEPARTMENT_NAME NOME_DEPTO, UPPER(A.DEPARTMENT_NAME) NOME_DEPTO_U,
       UPPER('pratica sql')
FROM HR.DEPARTMENTS A;

--EXEMPLOS COM INITCAP( )
SELECT A.DEPARTMENT_NAME NOME_DEPTO, 
       INITCAP(UPPER(A.DEPARTMENT_NAME)) NOME_DEPTO_I,
       INITCAP('prática sql')
FROM HR.DEPARTMENTS A;

--EXEMPLOS COM CONCAT( )
SELECT A.FIRST_NAME, A.LAST_NAME, 
       CONCAT(A.FIRST_NAME,A.LAST_NAME) NOME_COMPLETO
FROM HR.EMPLOYEES A;

--OUTRA OPÇÃO CONCATENAR
SELECT A.FIRST_NAME, A.LAST_NAME, 
       A.FIRST_NAME||' '||A.LAST_NAME NOME_COMPLETO,
       A.FIRST_NAME||' '||A.LAST_NAME||' '||A.SALARY AS TEXTO
FROM HR.EMPLOYEES A;

--EXEMPLOS COM LPAD( )
SELECT A.EMPLOYEE_ID, LPAD(A.EMPLOYEE_ID,10,'0')ID_PAD, A.FIRST_NAME
FROM HR.EMPLOYEES A;

--EXEMPLOS COM RPAD( )
SELECT SUBSTR('ORACLE',2,4)
FROM SYS.DUAL;

SELECT A.FIRST_NAME, A.LAST_NAME,   SUBSTR(A.FIRST_NAME,1,1)INI_1,
       SUBSTR(A.LAST_NAME,1,1)INI2, CONCAT(SUBSTR(A.FIRST_NAME, 1,1),
       SUBSTR(A.LAST_NAME,1,1)) TEXTO
FROM HR.EMPLOYEES A;

SELECT A.FIRST_NAME, SUBSTR(A.FIRST_NAME,1,3)PARTE1, 
       SUBSTR(A.FIRST_NAME,4,10)PARTE2
FROM HR.EMPLOYEES A;

--EXEMPLOS COM INSTR( )
SELECT A.JOB_TITLE, INSTR(A.JOB_TITLE,'r') posicao 
FROM HR.JOBS a;

SELECT A.JOB_TITLE, INSTR(A.JOB_TITLE,'es') posicao 
FROM HR.JOBS a;

SELECT A.JOB_TITLE, INSTR(A.JOB_TITLE,'re') posicao 
FROM HR.JOBS a;

SELECT A.JOB_TITLE, INSTR(A.JOB_TITLE,'t',10) posicao 
FROM HR.JOBS a;

--EXEMPLOS COM LTRIM( )
SELECT  A.JOB_TITLE, LTRIM(A.JOB_TITLE, 'A') POSICAO
FROM HR.JOBS A;

SELECT  A.JOB_TITLE, LTRIM(A.JOB_TITLE, 'AFPS') POSICAO
FROM HR.JOBS A;

SELECT '    Gabriel' COM_ESPACO, LTRIM('     Gabriel', ' ') SEM_ESPCAO 
from dual;

SELECT CONCAT('     GABRIEL',LTRIM('      Gabriel', '   ')) SEM_ESPACO 
FROM DUAL;

--EXEMPLOS COM RTRIM( )
SELECT A.JOB_TITLE, RTRIM(A.JOB_TITLE, 'tre') POSICAO 
FROM HR.JOBS A;

SELECT CONCAT(' Gabriel','GABRIEL') ESPACO 
FROM DUAL;

SELECT CONCAT(RTRIM(' Gabriel     '), 'GABRIEL') SEM_ESPACO 
FROM DUAL;

--EXEMPLO COM LENGHT( )
SELECT A.JOB_TITLE, LENGTH(A.JOB_TITLE) TAMANHO_CHAR 
FROM HR.JOBS A;

--EXEMPLOS COM TRANSLATE( )
SELECT A.JOB_TITLE, TRANSLATE(A.JOB_TITLE,'S','X') TRADUCAO
FROM HR.JOBS A;

SELECT A.JOB_TITLE, TRANSLATE(A.JOB_TITLE,'PAF','XYZ') TRADUCAO
FROM HR.JOBS A;

--EXEMPLOS COM REPLACE( )
SELECT A.JOB_TITLE, REPLACE(A.JOB_TITLE,'Manager', 'Gerente') TRADUCAO
FROM HR.JOBS A;

SELECT a.JOB_TITLE  FROM HR.JOBS a;

SELECT a.JOB_TITLE,
       decode(JOB_TITLE,
                            'President','Presidente',
                            'Administration Vice President','Vice Presiente ADM',
                            'Administration Assistant','Assist Adm',
                            'Finance Manager','Gerente Financ',
                            'Accountant','Contador',
                            'Accounting Manager','Gerente de contas',
                            'Public Accountant','Contas Publicas',
                            'Sales Manager','Gerente de vendas',
                            'Sales Representative','Repres. Vendas',
                            'Purchasing Manager','Gerente de compras',
                            'Purchasing Clerk','Aux Compras',
                            'Stock Manager','Gerente de estoque',
                            'Stock Clerk','Aux Estoque',
                            'Shipping Clerk','Aux de carregamento',
                            'Programmer','Programador',
                            'Marketing Manager','Gerente de MKT',
                            'Marketing Representative','Repres de Marketing',
                            'Human Resources Representative','Repres RH',
                            'Public Relations Representative','Relacoes Publicas') decodif
FROM HR.JOBS a;

-- Exemplos com REVERSE( ) - Funções de conversão 

SELECT a.JOB_TITLE,
       reverse(a.JOB_TITLE) revertido
FROM HR.JOBS a;

--outras funções
select (a.FIRST_NAME)nome,
        DUMP(a.FIRST_NAME)dump_nome,
        VSIZE(a.FIRST_NAME)size_nome 
        from hr.employees a; 