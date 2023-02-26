/*Subquery dentro do SELECT*/
SELECT account_id,
	   COUNT(order_id),
	   (SELECT COUNT(order_id) FROM "Parch_Posey".orders) AS total_de_id
FROM "Parch_Posey".orders
GROUP BY account_id

/*Quais os 10 clientes que fizeram compra acima da média?*/
SELECT account_id,
	   COUNT(order_id) AS quantidade_pedidos,
	   (SELECT (COUNT(order_id) / COUNT(DISTINCT account_id)) FROM "Parch_Posey".orders) AS media_pedidos
FROM "Parch_Posey".orders
GROUP BY account_id
HAVING COUNT(order_id) > (SELECT (COUNT(order_id) / COUNT(DISTINCT account_id)) FROM "Parch_Posey".orders)
ORDER BY 2 DESC
LIMIT 10;

/*Qual cliente teve a quantidade de eventos no mês igual a maior média de eventos no mês?*/
SELECT TO_CHAR(DATE(main.occurred_at), 'MM-YYYY') AS YEAR_MONTH
       ,main.account_id
	   ,COUNT(main.id) AS total_eventos  
FROM "Parch_Posey".web_events AS main
GROUP BY YEAR_MONTH, account_id
HAVING COUNT(main.id) >= (
			 SELECT AVG(inter.eventos_mes) AS max_evento
			 FROM (SELECT TO_CHAR(DATE(sub.occurred_at), 'MM-YYYY') AS YEAR_MONTH
				          ,COUNT(sub.id) AS eventos_mes
				   FROM "Parch_Posey".web_events AS sub
				   GROUP BY YEAR_MONTH) AS inter)
