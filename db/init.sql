CREATE DATABASE IF NOT EXISTS tienda_perritos;
USE tienda_perritos;

DROP TABLE IF EXISTS productos;

CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    precio INT NOT NULL,
    stock INT NOT NULL
);

-- Aquí definimos explícitamente el stock en las columnas y le pasamos el valor 0 al final de cada fila
INSERT INTO productos (nombre, descripcion, precio, stock) VALUES 
('InnovaTech Cloud Starter Pack', 'Suscripcion mensual de servidores virtuales y balanceador de carga basico optimizado para PyMEs.', 45000, 0),
('Licencia Enterprise DevOps Suite', 'Acceso anual a herramientas avanzadas de CI/CD, monitoreo de infraestructura y contenedores Docker.', 120000, 0),
('Soporte Premium 24/7 AWS', 'Soporte tecnico especializado con ingenieros certificados en arquitectura cloud y mitigacion de fallos.', 85000, 0),
('InnovaTech CyberSecurity Shield', 'Monitoreo perimetral y auditorias automatizadas de Security Groups y firewalls en tiempo real.', 67000, 0);