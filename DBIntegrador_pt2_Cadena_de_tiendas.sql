-- Crear la tabla Categoria
CREATE TABLE Categoria (
  Id int PRIMARY KEY,
  Nombre text
);

-- Crear la tabla Producto
CREATE TABLE Producto (
  Id int PRIMARY KEY,
  Nombre text,
  Marca text,
  Descripcion text,
  Categoria_Id int,
  Precio_unitario int
);

-- Crear la tabla Sucursal
CREATE TABLE Sucursal (
  Id int PRIMARY KEY,
  Nombre text,
  Direccion text
);

-- Crear la tabla Stock con restricción unique
CREATE TABLE Stock (
  Id int PRIMARY KEY,
  Sucursal_Id int,
  Producto_Id int,
  Cantidad int,
  UNIQUE (Sucursal_Id, Producto_Id)
);

-- Crear la tabla Cliente
CREATE TABLE Cliente (
  Id int PRIMARY KEY,
  Nombre text,
  Telefono int
);

-- Crear la tabla Orden
CREATE TABLE Orden (
  Id int PRIMARY KEY,
  Cliente_Id int,
  Sucursal_Id int,
  Fecha_De_Orden date,
  Total int
);

-- Crear la tabla Item
CREATE TABLE Item (
  Id int PRIMARY KEY,
  Orden_Id int,
  Producto_Id int,
  Cantidad int,
  Monto_Venta int
);
