CREATE DATABASE gestiontiendaqr;
USE gestiontiendaqr;
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    usuario VARCHAR(50),
    password VARCHAR(50),
    rol VARCHAR(20)
);

CREATE TABLE categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50)
);
CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    marca VARCHAR(50),
    talla INT,
    precio DOUBLE,
    stock INT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);
INSERT INTO categorias (nombre) VALUES 
('Running'),
('Casual'),
('Basket');

INSERT INTO usuarios (nombre, usuario, password, rol) VALUES
('Administrador', 'admin', '1234', 'admin'),
('Juan Pérez', 'empleado1', '1234', 'empleado'),
('María López', 'empleado2', '1234', 'empleado'),
('Carlos Ruiz', 'cliente1', '1234', 'cliente'),
('Ana Gómez', 'cliente2', '1234', 'cliente'),
('Laura Martínez', 'cliente3', '1234', 'cliente');
INSERT INTO productos (nombre, marca, talla, precio, stock, id_categoria) VALUES

-- NIKE
('Air Force 1', 'Nike', 43, 120, 2, 2),
('Air Force 1', 'Nike', 42, 120, 10, 2),
('Air Max 90', 'Nike', 43, 140, 6, 2),
('Air Max 270', 'Nike', 41, 150, 8, 1),
('Air Max Plus', 'Nike', 44, 170, 3, 1),
('Dunk Low', 'Nike', 42, 110, 12, 2),
('Dunk High', 'Nike', 43, 125, 5, 2),
('Pegasus 40', 'Nike', 42, 130, 7, 1),
('ZoomX Vaporfly', 'Nike', 41, 250, 2, 1),
('Jordan 1 Mid', 'Nike', 44, 150, 4, 3),
('Jordan 4 Retro', 'Nike', 43, 220, 2, 3),

-- ADIDAS
('Ultraboost 22', 'Adidas', 43, 180, 3, 1),
('Ultraboost Light', 'Adidas', 42, 190, 5, 1),
('NMD R1', 'Adidas', 41, 140, 9, 2),
('Superstar', 'Adidas', 42, 100, 15, 2),
('Stan Smith', 'Adidas', 43, 95, 11, 2),
('Forum Low', 'Adidas', 44, 110, 6, 2),
('Adizero Boston 12', 'Adidas', 42, 160, 4, 1),
('Adizero Adios Pro', 'Adidas', 41, 230, 2, 1),

-- PUMA
('RS-X', 'Puma', 41, 110, 7, 2),
('Future Rider', 'Puma', 42, 95, 8, 2),
('Suede Classic', 'Puma', 43, 80, 10, 2),
('Deviate Nitro', 'Puma', 42, 150, 3, 1),

-- NEW BALANCE
('550', 'New Balance', 42, 130, 4, 2),
('574', 'New Balance', 43, 100, 9, 2),
('327', 'New Balance', 41, 120, 6, 2),
('9060', 'New Balance', 44, 180, 2, 2),
('Fresh Foam X 1080', 'New Balance', 42, 170, 5, 1),

-- CONVERSE
('Chuck Taylor All Star', 'Converse', 42, 75, 20, 2),
('Run Star Hike', 'Converse', 41, 110, 7, 2),

-- VANS
('Old Skool', 'Vans', 42, 85, 14, 2),
('Sk8-Hi', 'Vans', 43, 90, 10, 2),

-- ASICS
('Gel-Kayano 30', 'Asics', 42, 180, 4, 1),
('Gel-Nimbus 25', 'Asics', 41, 175, 3, 1),

-- REEBOK
('Classic Leather', 'Reebok', 42, 90, 8, 2),
('Nano X3', 'Reebok', 43, 140, 5, 1);