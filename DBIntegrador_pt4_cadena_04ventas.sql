select cliente_id, sum(total) as "total_ventas" from orden group by cliente_id order by cliente_id