/* SEÇÃO 13 - PROGRAMANDO EM MYSQL */

USE COMERCIO;

/* DELIMITER

Delimiter ou Delimitador - é um sinal usado no final de um comando, no caso ;.  Sem informá-lo, o banco de dados não irá executar o comando 


Para alterar o delimitador, é só  abrir o prompt do banco (command line client) e executar DELIMITER'DELIMITADOR ESCOLHIDO' 

Ao fechar e abrir o banco novamente o delimitador volta ao padrão ponto e vírgula ;*/

Database changed
mysql> STATUS
--------------
C:\Program Files (x86)\MySQL\MySQL Server 5.5\bin\mysql.exe  Ver 14.14 Distrib 5.5.60, for Win32 (AMD64)

Connection id:          5
Current database:       comercio
Current user:           root@localhost
SSL:                    Not in use
Using delimiter:        ;
Server version:         5.5.60-log MySQL Community Server (GPL)
Protocol version:       10
Connection:             localhost via TCP/IP
Server characterset:    latin1
Db     characterset:    latin1
Client characterset:    cp850
Conn.  characterset:    cp850
TCP port:               3306
Uptime:                 24 min 54 sec

Threads: 3  Questions: 122  Slow queries: 0  Opens: 39  Flush tables: 1  Open tables: 32  Queries per second avg: 0.081
--------------

mysql> DELIMITER $
mysql> STATUS
--------------
C:\Program Files (x86)\MySQL\MySQL Server 5.5\bin\mysql.exe  Ver 14.14 Distrib 5.5.60, for Win32 (AMD64)

Connection id:          5
Current database:       comercio
Current user:           root@localhost
SSL:                    Not in use
Using delimiter:        $
Server version:         5.5.60-log MySQL Community Server (GPL)
Protocol version:       10
Connection:             localhost via TCP/IP
Server characterset:    latin1
Db     characterset:    latin1
Client characterset:    cp850
Conn.  characterset:    cp850
TCP port:               3306
Uptime:                 25 min 6 sec

Threads: 3  Questions: 125  Slow queries: 0  Opens: 39  Flush tables: 1  Open tables: 32  Queries per second avg: 0.083
--------------

mysql>

/* INICIANDO COM PROGRAMAÇÃO EM BANCO DE DADOS

STORED PROCEDURE - São blocos de programação que ficam armazenados no BDS */

/* CRIANDO PROCEDIMENTO 
Sintaxe:

CREATE PROCEDURE 'NOME'()
BEGIN

	QUALQUER PROGRAMAÇÃO;
END
DELIMITER ESCOLHIDO

Por que alteramos o delimitador: Porque a programação no corpo da procedure usará o delimitador padrão para executar o comando, se deixarmos o mesmo, o procedure não será criado, pois o banco não irá até o fim */

DELIMITER $

CREATE PROCEDURE NOME_EMPRESA()
BEGIN

	SELECT 'COMERCIO & COMERCIO' AS EMPRESA;
    
END $

CALL NOME_EMPRESA();

DROP PROCEDURE NOME_EMPRESA;

/* CRIANDO PROCEDURE COM PARAMETRO */

mysql> CREATE PROCEDURE SOMA(NUM1 INT, NUM2 INT)
    -> BEGIN
    -> SELECT NUM1 + NUM2 AS SOMA;
    -> END
    -> $
Query OK, 0 rows affected (0.18 sec)


CALL SOMA(150, 258);

DESC CLIENTE;
DESC ENDERECO;
ENDE

/* Criando procedure para inserir dados na base Comercio */

CREATE PROCEDURE CADASTRO_COMERCIO(C_NOME VARCHAR(30), C_SEXO ENUM('M', 'F'), C_EMAIL VARCHAR(40), C_CPF VARCHAR(30))
BEGIN
INSERT INTO CLIENTE VALUES(NULL, C_NOME, C_SEXO, C_EMAIL, C_CPF);
END
$

INSERT INTO CLIENTE VALUES(NULL, 'ROSANA MARIA', 'F', 'ROSANA@MARIA.COM', '5792428296475');


CALL CADASTRO_COMERCIO('CARLOS MANOEL', 'M', 'CARLOS@MANOEL.COM', '45812935745');

SELECT * FROM CLIENTE;





