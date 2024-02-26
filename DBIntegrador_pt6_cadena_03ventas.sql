select sucursal.nombre as sucursal, count(orden.sucursal_id) as cantidad_ordenes, sum(orden.total) as total_ventas
from orden
join sucursal
on orden.sucursal_id = sucursal.id
group by sucursal.nombre
order by sucursal;