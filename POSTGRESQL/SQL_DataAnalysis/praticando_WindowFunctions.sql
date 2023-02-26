-- EXPLORANDO FUNÇÕES DE JANELA --

SELECT *
FROM "Parch_Posey".orders
LIMIT 10


/* Utilizando a consulta anterior como uma subquery para criar uma distribuição por faixa*/
SELECT faixa
       ,MIN(total_amt_usd) AS menor_pedido
	   ,MAX(total_amt_usd) AS maior_pedido
	   ,COUNT(DISTINCT order_id) AS quantidade_pedidos
FROM (
      SELECT account_id
		     ,order_id
		     ,total_amt_usd
		     ,NTILE(9) OVER(ORDER BY total_amt_usd) AS faixa
	  FROM "Parch_Posey".orders) a
GROUP BY faixa
ORDER BY faixa;


