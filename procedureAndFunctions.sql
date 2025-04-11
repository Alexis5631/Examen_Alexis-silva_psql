-- 1. Procedimiento principal para registrar venta
CREATE OR REPLACE PROCEDURE registrar_venta(
    p_id_cliente INTEGER,
    p_id_producto INTEGER,
    p_cantidad INTEGER
)
LANGUAGE plpgsql
AS $$
DECLARE
    v_precio_unitario NUMERIC(10,2);
    v_subtotal NUMERIC(10,2);
    v_id_venta INTEGER;
BEGIN
    -- Validar cliente
    IF NOT cliente_existe(p_id_cliente) THEN
        RAISE NOTICE 'El cliente con ID % no existe.', p_id_cliente;
        RETURN;
    END IF;

    -- Verificar stock
    IF NOT hay_stock_suficiente(p_id_producto, p_cantidad) THEN
        RAISE NOTICE 'No hay stock suficiente para el producto con ID %.', p_id_producto;
        RETURN;
    END IF;

    -- Obtener precio del producto
    SELECT precio INTO v_precio_unitario
    FROM productos
    WHERE id_producto = p_id_producto;

    -- Calcular subtotal
    v_subtotal := v_precio_unitario * p_cantidad;

    -- Insertar en ventas
    INSERT INTO ventas (fecha, id_clientes)
    VALUES (CURRENT_TIMESTAMP, p_id_cliente)
    RETURNING id_ventas INTO v_id_venta;

    -- Insertar detalle de venta
    INSERT INTO detalle_venta (id_ventas, id_producto, cantidad, subtotal)
    VALUES (v_id_venta, p_id_producto, p_cantidad, v_subtotal);

    -- Actualizar stock
    UPDATE productos
    SET stock = stock - p_cantidad
    WHERE id_producto = p_id_producto;

    RAISE NOTICE 'Venta registrada correctamente con ID de venta: %', v_id_venta;
END;
$$;


-- 2. Funcion para validar existencia de cliente
CREATE OR REPLACE FUNCTION cliente_existe(p_id_cliente INTEGER)
RETURNS BOOLEAN AS $$
BEGIN
RETURN EXISTS (
    SELECT 1 FROM clientes WHERE id_clientes = p_id_cliente
);
END;
$$ LANGUAGE plpgsql;


-- 3. Funcion para validar srtock suficiente
CREATE OR REPLACE FUNCTION hay_stock_suficiente(p_id_producto INTEGER, p_cantidad INTEGER)
RETURNS BOOLEAN AS $$
DECLARE
v_stock INTEGER;
BEGIN
SELECT stock INTO v_stock
FROM productos
WHERE id_producto = p_id_producto;

IF NOT FOUND THEN
    RETURN FALSE;
END IF;

RETURN v_stock >= p_cantidad;
END;
$$ LANGUAGE plpgsql;

🧪 Para probar:
CALL registrar_venta(1, 1, 2);
