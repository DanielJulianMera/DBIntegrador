SELECT categoria.nombre as categoria, avg(producto.precio_unitario) as precio_promedio
FROM producto
INNER JOIN categoria
ON producto.categoria_id = categoria.id
group by categoria.nombre
order by precio_promedio asc;