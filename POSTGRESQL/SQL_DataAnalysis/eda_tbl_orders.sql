----- Visualizando a distribuição dos pedidos mensal de 2014 -----
SELECT TO_CHAR(DATE(occurred_at), 'MM-YYYY') AS YEAR_MONTH, -- Convertendo a coluna do tipo timestamp para date
       SUM(total) AS quantidade_total 
FROM "Parch_Posey".orders
WHERE DATE_PART('year', occurred_at) = 2014 -- Filtrando apenas os dados de 2014
GROUP BY TO_CHAR(DATE(occurred_at), 'MM-YYYY')
ORDER BY 1

----- Quantidade de clientes por quantidade de pedidos ----
SELECT pedidos, COUNT(*) as num_clientes
FROM (SELECT account_id, COUNT(order_id) AS pedidos
	  FROM "Parch_Posey".orders
	  GROUP BY 1) a
GROUP BY 1
ORDER BY 1 DESC

----- Criando faixas para agrupar as vendas -----
SELECT CASE
		   WHEN total_amt_usd <= 20000.00 THEN '1. 0 - 20K'
		   WHEN total_amt_usd <= 40000.00 THEN '2. 20K - 40K'
		   WHEN total_amt_usd <= 60000.00 THEN '3. 40K - 60K'		   
		   WHEN total_amt_usd <= 80000.00 THEN '4. 60K - 80K'
		   WHEN total_amt_usd <= 100000.00 THEN '5. 80K - 100K'
		   WHEN total_amt_usd <= 120000.00 THEN '6. 100K - 120K'
		   WHEN total_amt_usd <= 140000.00 THEN '7. 120K - 140K'
		   WHEN total_amt_usd <= 160000.00 THEN '8. 140K - 160K'
		   WHEN total_amt_usd <= 180000.00 THEN '9. 160 - 180K'
		   WHEN total_amt_usd <= 200000.00 THEN '10. 180K - 200K'
		   ELSE '11. 200K +' END AS faixa_montante
	 ,COUNT(order_id) AS pedidos
FROM "Parch_Posey".orders
GROUP BY 1
ORDER BY 1


SELECT DISTINCT(DATE_PART('year', occurred_at))
FROM "Parch_Posey".orders

SELECT *
FROM "Parch_Posey".orders
LIMIT 2
