# 🏪 TechZone – Sistema de Gestión de Inventario y Ventas

Este proyecto consiste en el diseño e implementación de una base de datos relacional en PostgreSQL para la tienda de tecnología **TechZone**. Su objetivo es optimizar la gestión de inventario, ventas, clientes y proveedores, permitiendo un análisis más eficiente de los datos.

---

---
## Modelo E-R


---

## Archivos sql:

- **diagrama**: Contiene el diagrama.
- [DQL Select](modelo_er.png): Diagrama
- **tablas**: Contiene las tablas de la base de datos.
- [DQL Select](db.sql): Tablas
- **inserts**: Contiene los inserts utilizados en el proyecto.
- [DQL Select](insert.sql): Inserts
- **consultas**: Contiene las consultas de la base de datos.
- [DQL Select](queries.sql): Consultas
- **procedimientos**: Contiene los procedimientos SQL utilizadas en el proyecto.
- [DQL Select](procedureAndFunctions.sql): Procedimientos.

## 📌 Funcionalidades del sistema

- 📦 Registro de productos, clasificados por categorías y asociados a proveedores.
- 👥 Registro de clientes con datos de contacto únicos.
- 💰 Registro de ventas y control automático del inventario.
- 🧾 Detalle de cada venta: producto, cantidad y subtotal.
- 📈 Consultas avanzadas para análisis de ventas y comportamiento de clientes.
- ⚙️ Procedimiento almacenado que valida stock y registra ventas de forma segura.

---

## 🧱 Estructura del Proyecto

- `modelo_er.png` → Diagrama Entidad-Relación con entidades, relaciones y cardinalidades.
- `db.sql` → Script para crear las tablas y relaciones con claves primarias/foráneas y restricciones.
- `insert.sql` → Script con datos de prueba (15 registros por tabla).
- `queries.sql` → 6 consultas avanzadas para análisis de información.
- `ProcedureAndFunctions.sql` → Procedimiento almacenado que valida y registra ventas.
- `README.md` → Documentación del proyecto.

---

## 🖥️ Cómo ejecutar el proyecto en PostgreSQL

1. Clona este repositorio:
   ```bash
   git clone https://github.com/tu-usuario/techzone-inventario.git
   cd techzone-inventario


## Abre una terminal con acceso a PostgreSQL y crea la base de datos:

```
CREATE DATABASE techzone;
\c techzone
```
