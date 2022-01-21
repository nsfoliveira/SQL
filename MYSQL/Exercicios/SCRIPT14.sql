/* SEÇÃO 14 - FUNÇÕES DE AGREGAÇÃO */

CREATE TABLE VENDEDORES (
	IDVENDEDO	INT PRIMARY KEY AUTO_INCREMENT,
    NOME 		VARCHAR(30),
    SEXO		CHAR(1),
    JANEIRO		FLOAT(10,2),
    FEVEREIRO	FLOAT(10,2),
    MARCO		FLOAT(10,2)
);

INSERT INTO VENDEDORES VALUES(NULL,'CARLOS','M',76234.78,88346.87,5756.90);
INSERT INTO VENDEDORES VALUES(NULL,'MARIA','F',5865.78,6768.87,4467.90);
INSERT INTO VENDEDORES VALUES(NULL,'ANTONIO','M',78769.78,6685.87,6664.90);
INSERT INTO VENDEDORES VALUES(NULL,'CLARA','F',5779.78,446886.87,8965.90);
INSERT INTO VENDEDORES VALUES(NULL,'ANDERSON','M',676545.78,77544.87,578665.90);
INSERT INTO VENDEDORES VALUES(NULL,'IVONE','F',57789.78,44774.87,68665.90);
INSERT INTO VENDEDORES VALUES(NULL,'JOAO','M',4785.78,66478.87,6887.90);
INSERT INTO VENDEDORES VALUES(NULL,'CELIA','F',89667.78,57654.87,5755.90);

SELECT * FROM VENDEDORES;

SELECT MAX(FEVEREIRO) AS MAIOR_FEV
FROM VENDEDORES;

SELECT MIN(FEVEREIRO) AS MINIMO_FEV
FROM VENDEDORES;

SELECT AVG(FEVEREIRO) AS MEDIA_FEV
FROM VENDEDORES;

/*USANDO VÁRIAS FUNÇÕES */

SELECT MAX(JANEIRO) AS MAIOR_JAN, 
	   MIN(JANEIRO) AS MENOR_JAN,
       AVG(JANEIRO) AS MEDIA_JAN
FROM VENDEDORES;


SELECT MAX(JANEIRO) AS MAIOR_JAN, 
	   MIN(JANEIRO) AS MENOR_JAN,
       TRUNCATE(AVG(JANEIRO), 2) AS MEDIA_JAN
FROM VENDEDORES;

/* AGREGANDO COM SUM()*/

SELECT SUM(JANEIRO) AS TOTAL_JANEIRO
FROM VENDEDORES;

SELECT SEXO, SUM(JANEIRO) AS TOTAL_JANEIRO
FROM VENDEDORES
GROUP BY SEXO;



