-- pegando data do servidor
select sysdate from dual;

-- Utilizando mascaras
select 
  sysdate "Data do servidor", 
  to_char(sysdate,'yyyy-mm-dd hh24-mi-ss') "Data formatada", 
  to_char(sysdate, 'SCC') "S�culo"
from dual;

-- Formatando datas
-- MM = Retorna o n�mero representando o m�s. Ex: 04
select to_char(sysdate, 'MM') as campo from dual;
-- MON = Retorna a abrevia��o do m�s, por exemplo �ABR�
select to_char(sysdate, 'MON') as campo from dual;
-- MONTH = Retorna o nome completo do m�s, por exemplo: �ABRIL�
select to_char(sysdate, 'MONTH') as campo from dual;
-- DD = retorna o dia da data informada como par�metro Ex.: 07
select to_char(sysdate, 'DD') as campo from dual;
-- DY = retorna a abrevia��o do dia da semana. Exemplo: SEG
select to_char(sysdate, 'DY') as campo from dual;
-- YYYY = retorna o ano com 4 d�gitos. Exemplo: 2014
select to_char(sysdate, 'YYYY') from dual;
-- YY = retorna os �ltimos dois n�meros do ano. Exemplo: 14
select to_char(sysdate, 'YY') as campo from dual;
-- AM (ou PM) = retorna se a hora � de manh� (AM) ou a tarde (PM).
select to_char(sysdate, 'AM') as campo from dual;
--HH = retorna a hora (0 � 12)
select to_char(sysdate, 'HH') as campo from dual;
--HH24 = retorna a hora (0 � 24)
select to_char(sysdate, 'HH24') from dual;
--MI = retorna o minuto
select to_char(sysdate, 'MI') as campo  from dual;
--SS = retorna o segundo
select to_char(sysdate, 'SS') as campo  from dual;
-- Os formatos de data podem ser utilizados em conjuntos como por exemplo:
select to_char(sysdate, 'HH24:MI:SS') as campo  from dual;

-- Outro exemplo retornando a data no formato mais comum no Brasil.
select to_char(sysdate, 'DD/MM/YYYY HH24:MI:SS') from dual;

--campo tratado

select a.first_name,a.hire_date orig,
       to_char(a.hire_date, 'MON')mex_ext,
       to_char(a.hire_date, 'MM')mes_num,
       to_char(a.hire_date, 'MONTH')mes_num,
       to_char(a.hire_date, 'DY')dia_semana
from HR.EMPLOYEES a;

-- SUBTRAINDO DIAS
ALTER SESSION SET nls_date_format = 'yyyy-mm-dd hh24:mi:ss';
--ALTER SESSION SET nls_date_format = 'dd-mm-yyyy hh24:mi:ss';

--ADICIONANDO DIAS 
SELECT SYSDATE+5 FROM DUAL;

--DIFERENCA ENTRE OS DIAS

SELECT TO_DATE(SYSDATE)-TO_DATE('2018-01-01') DIF_DIAS FROM DUAL;


--ADICIONANDO HORAS
ALTER SESSION SET nls_date_format = 'yyyy-mm-dd hh24:mi:ss';

SELECT SYSDATE, SYSDATE+5/24 DATA_HORA_ADD FROM DUAL

--ADICIONAR MESES


SELECT SYSDATE DATA_ATUAL, ADD_MONTHS(SYSDATE,2)ADD_MESES FROM DUAL;

--SUBTRAIR MESES
SELECT SYSDATE DATA_ATUAL, ADD_MONTHS(SYSDATE,-2)ADD_MESES FROM DUAL;

-- QTD DE MESES ENTRE DATAS

SELECT  first_name,a.hire_date,
         sysdate,
         trunc(months_between(sysdate,a.hire_date)) Meses
FROM HR.EMPLOYEES a;

--Ultimo dia mes
SELECT  sysdate hoje,last_day(sysdate)Ult_dia from dual;

SELECT  a.hire_date,last_day(a.hire_date)Ult_dia from  HR.EMPLOYEES a;

--next day
--cenario para descobrir um data que acontece toda segunda quinta de cada cada mes;
-- descobrindo data da proxima segunda feira
-- 1 � Domingo 2 � Segunda-Feira 3 � Ter�a-Feira 4 � Quarta-Feira 5 � Quinta-Feira 6 � Sexta-Feira 7 � S�bado.
select NEXT_DAY(TRUNC(SYSDATE), 2) from dual;

select NEXT_DAY(NEXT_DAY(TRUNC(SYSDATE), 2),2) from dual;

--
SELECT TRUNC((MONTHS_BETWEEN(SYSDATE, TO_DATE('05/11/1977','dd/mm/yyyy')))/12) 
    AS idade FROM DUAL;

SELECT TRUNC((MONTHS_BETWEEN(SYSDATE, TO_DATE('05/11/1977','dd/mm/yyyy')))) 
    AS idade_MESES FROM DUAL;

--DIAS DE VIDA
SELECT SYSDATE-TO_DATE('05/11/1977','dd/mm/yyyy') FROM DUAL;

--DUAS DE VIDA
SELECT TRUNC(SYSDATE-TO_DATE('05/11/1977','dd/mm/yyyy')) DIAS FROM DUAL;