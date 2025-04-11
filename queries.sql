-- 1. Listar los productos con stock menor a 5 unidades
SELECT nombre, stock
FROM productos
WHERE stock < 5;


-- 2. Calcular ventas totales de un mes específico (ejemplo: abril 2025)
SELECT 
    TO_CHAR(v.fecha, 'YYYY-MM') AS mes,
    SUM(dv.subtotal) AS total_ventas
FROM ventas v
JOIN detalle_venta dv ON v.id_ventas = dv.id_ventas
WHERE v.fecha BETWEEN '2025-04-01' AND '2025-04-30'
GROUP BY mes;

-- 3. Obtener el cliente con más compras realizadas
SELECT c.nombre, COUNT(v.id_ventas) AS total_compras
FROM clientes c
JOIN ventas v ON c.id_clientes = v.id_clientes
GROUP BY c.id_clientes, c.nombre
ORDER BY total_compras DESC
LIMIT 1;

-- 4. Listar los 5 productos más vendidos
SELECT p.nombre, SUM(dv.cantidad) AS total_vendidos
FROM productos p
JOIN detalle_venta dv ON p.id_producto = dv.id_producto
GROUP BY p.id_producto, p.nombre
ORDER BY total_vendidos DESC
LIMIT 5;

-- 5. Consultar ventas realizadas en un rango de fechas de tres días y un mes (ej: 25 al 27 de marzo de 2025)
SELECT 
    v.id_ventas, 
    v.fecha, 
    c.nombre AS cliente, 
    SUM(dv.subtotal) AS total
FROM ventas v
JOIN clientes c ON v.id_clientes = c.id_clientes
JOIN detalle_venta dv ON v.id_ventas = dv.id_ventas
WHERE v.fecha BETWEEN '2025-03-25' AND '2025-03-27'
GROUP BY v.id_ventas, v.fecha, c.nombre;

-- 6. Identificar clientes que no han comprado en los últimos 6 meses
SELECT c.id_clientes, c.nombre
FROM clientes c
LEFT JOIN ventas v ON c.id_clientes = v.id_clientes
GROUP BY c.id_clientes, c.nombre
HAVING MAX(v.fecha) IS NULL OR MAX(v.fecha) < CURRENT_DATE - INTERVAL '6 months';