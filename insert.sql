-- INSERTAR CATEGORIAS
INSERT INTO categorias (nombre) VALUES
('Laptops'), ('Telefonos'), ('Accesorios'), ('Componentes'), ('Tablets'), ('Monitores'), ('Audio'), ('Redes'), ('Impresoras'), ('Gaming'), ('Almacenamiento'), ('Smart Home'), ('Camaras'), ('Wearables'), ('Software');

-- INSERTAR PROVEEDORES
INSERT INTO proveedores (nombre, correo, telefono) VALUES
('TechSupplier S.A', 'contactotech@hotmail.com', '3001234567'),
('GadgeWorld', 'ventasgadgeworld@gmail.com', '3109845781'),
('ElectroParts Ltda.', 'infoalectroparts@gmail.com', '3115557617'),
('DigitalPro', 'supportdigitalpro@hotmail.com', '3156027894'),
('HardwareExpress', 'ventashardwareexpress@hotmail.com', '3143024082'),
('MegaTech', 'supportmegatech@gmail.com', '3014568794'),
('Importadora Chip', 'importadorasupport@gmail.com', '3015788809'),
('AlphaTech', 'alphatech@hotmail.com', '3125647892'),
('InnovaTec', 'innovatec@gmail.com', '3056487215'),
('DistribuPc', 'distribupcsupport@hotmail.com', '3163541235'),
('ByteSupplies', 'ventasbytesupplies@gmail.com', '3163237852'),
('CompuExpress', 'compusexpresssupport@gmail.com', '3123246699'),
('Nextlevel Tech', 'nextleveltech@hotmail.com', '3156987412'),
('QuickHardware', 'quickhardwareventas@hotmail.com', '3165489657');

-- INSERTAR CLIENTES
INSERT INTO clientes (nombre, correo, telefono) VALUES
('Juan Pinilla', 'patopatoganso@gmail.com', '3123246699'),
('Fabian Glan', 'xkodigo777@gmail.com', '3214589748'),
('Juan David', 'juan_ama_a_sara@hotmail.com', '3154896574'),
('Juan Carlos', 'juanCarlosFC@gmail.com', '3163033769'),
('Maria Andrea', 'mariaAndrea2005@gmail.com', '3146584210'),
('Valentina', 'valentinabueno@hotmail.com', '3147852014'),
('Saray Bueno', 'sarayBueno@hotmail.com', '3156458742'),
('Leslie Valentina', 'leslie15418@gmail.com', '317345874'),
('Kevin Arturo', 'kevinarturobueno@hotmail.com', '3145210487'),
('Andres Pardo', 'andrespardo1548@gmail.com', '3163033769'),
('Lionel Messi', 'antonellaMeGobierna', '3154896574'),
('Cristiano Ronaldo', 'elMejorDelMundo@hotmail.com', '3148957106'),
('Vinicius Jr', 'vinidobrasil@hotmail.com', '3156458965');

-- INSERTAR PRODUCTOS
INSERT INTO productos (nombre, precio, stock, id_categoria, id_proveedores) VALUES 
('Laptop HP Pavilion 15', 3200000, 10, 1, 1),
('Telefono Samsung Galaxy A54', 1500000, 20, 2, 2),
('Mouse Logitech M170', 45000, 35, 3, 3),
('Procesador Intel Core i7', 1200000, 5, 4, 4),
('Tablet Lenovo Tab M10', 870000, 12, 5, 5),
('Monitor Samsung Gaming 24"', 1200000, 8, 6, 6),
('Audifonos Sony WH-1000XM4', 110000, 7, 7, 7),
('Router TP-Link Archer C6', 230000, 15, 8, 8),
('Impresora Epson L3250', 980000, 6, 9, 9),
('Silla Gaming Corsair', 1800000, 9, 10, 10),
('Disco SSD 1TB', 210000, 12, 11, 11),
('Bombillo Inteligente Xiaomi', 120000, 25, 12, 12),
('Camara Cannon EOS Rebel T7', 1850000, 4, 13, 13),
('Smartwatch Huawei GT3', 87000, 11, 14, 14);


-- INSERTAR VENTAS
INSERT INTO ventas (fecha, id_clientes) VALUES
('2025-04-01 10:15:00', 1),
('2025-04-02 12:30:00', 2),
('2025-04-03 14:45:00', 3),
('2025-03-25 11:20:00', 4),
('2025-03-27 13:00:00', 5),
('2025-02-20 15:30:00', 6),
('2025-04-04 09:00:00', 7),
('2025-01-10 17:15:00', 8),
('2024-12-01 16:40:00', 9),
('2025-04-05 08:20:00', 10);

-- INSERTAR DETALLES VENTA
INSERT INTO detalle_venta (id_ventas, id_producto, cantidad, subtotal) VALUES
(1, 1, 1, 3200000),
(2, 2, 2, 90000),
(3, 3, 1, 1500000),
(4, 4, 1, 1800000),
(5, 5, 1, 1200000),
(6, 6, 1, 870000),
(7, 7, 2, 2400000),
(8, 8, 3, 630000),
(9, 9, 1, 110000),
(10, 10, 2, 2400000),
(1, 11, 1, 1850000),
(2, 12, 1, 87000),
(3, 13, 2, 260000);