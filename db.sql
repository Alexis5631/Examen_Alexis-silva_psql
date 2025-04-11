CREATE DATABASE tech_zone;
\c tech_zone;

-- TABLA CATEGORIAS
CREATE TABLE categorias (
	id_categoria SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE
);

-- TABLA PROVEEDORES
CREATE TABLE proveedores (
	id_proveedores SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100),
    telefono VARCHAR(20)
);

-- TABLA PRODUCTOS
CREATE TABLE productos (
	id_producto SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio NUMERIC(10,2) NOT NULL CHECK (precio >= 0),
    stock INTEGER NOT NULL CHECK (stock >= 0),
    id_categoria INTEGER NOT NULL,
    id_proveedores INTEGER NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria),
    FOREIGN KEY (id_proveedores) REFERENCES proveedores(id_proveedores)
);

-- TABLA CLIENTES
CREATE TABLE clientes (
	id_clientes SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) UNIQUE,
    telefono VARCHAR(20)
);

-- TABLA VENTAS
CREATE TABLE ventas (
	id_ventas SERIAL PRIMARY KEY,
    fecha TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    id_clientes INTEGER NOT NULL,
    FOREIGN KEY (id_clientes) REFERENCES clientes(id_clientes)
);

-- TABLA DETALLEVENTA
CREATE TABLE detalle_venta (
	id_detalle SERIAL PRIMARY KEY,
    id_ventas INTEGER NOT NULL,
    id_producto INTEGER NOT NULL,
    cantidad INTEGER NOT NULL CHECK (cantidad > 0),
    subtotal NUMERIC(10,2) NOT NULL CHECK (subtotal > 0),
    FOREIGN KEY (id_ventas) REFERENCES ventas(id_ventas),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);