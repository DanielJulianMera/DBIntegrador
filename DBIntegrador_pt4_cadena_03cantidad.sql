select sucursal_id, count(producto_id) as "cantidad_producto", sum(cantidad) as "cantidad_total" from stock group by sucursal_id order by sucursal_id