select cliente.nombre as cliente, sum(orden.total) as monto_compra
from orden
join cliente
on orden.cliente_id = cliente.id
group by cliente.nombre
order by monto_compra desc
limit 1;