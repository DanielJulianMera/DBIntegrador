select categoria.nombre as categoria, sum(stock.cantidad) as cantidad_total
from producto
join categoria
on producto.categoria_id = categoria.id
join stock
on stock.producto_id = producto.id
group by categoria.nombre
order by cantidad_total;