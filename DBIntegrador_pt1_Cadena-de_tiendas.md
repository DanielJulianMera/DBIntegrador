Table Categoria {
  Id integer [primary key]
  Nombre varchar
}

Table Producto {
  Id integer [primary key]
  Nombre varchar
  Marca varchar
  Descripcion text
  Categoria_Id integer
  Precio_unitario integer
}

Table Sucursal {
  Id integer [primary key]
  Nombre varchar
  Direccion varchar
}

Table Stock 
{
  Id integer [primary key]
  Sucursal_Id integer
  Producto_Id integer
  Cantidad integer
}

Table Cliente {
  Id integer [primary key]
  Nombre varchar
  Telefono num
}


Table Orden {
  Id integer [primary key]
  Cliente_Id integer
  Sucursal_Id integer
  Fecha_De_Orden date
  Total integer
}

Table Item {
  Id integer [primary key]
  Orden_Id integer
  Producto_Id integer
  Cantidad integer
  Monto_Venta integer
}


Ref: Producto.Categoria_Id < Categoria.Id // one-to-many
Ref: Stock.Sucursal_Id < Sucursal.Id // one-to-many                
Ref: Stock.Producto_Id < Producto.Id // one-to-many
Ref: Orden.Cliente_Id < Cliente.Id // one-to-many
Ref: Orden.Sucursal_Id < Sucursal.Id // one-to-many
Ref: Item.Orden_Id < Orden.Id // one-to-many
Ref: Item.Producto_Id < Producto.Id // one-to-many
