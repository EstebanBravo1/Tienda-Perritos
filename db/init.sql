CREATE DATABASE IF NOT EXISTS innova_db;
USE innova_db;

CREATE TABLE IF NOT EXISTS productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255),
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL
);

INSERT INTO productos (nombre, descripcion, precio, stock) VALUES
('InnovaTech Cloud Starter Pack', 'Suscripción mensual de servidores virtuales y balanceador de carga básico optimizado para PyMEs.', 45000),
('Licencia Enterprise DevOps Suite', 'Acceso anual a herramientas avanzadas de CI/CD, monitoreo de infraestructura y contenedores Docker.', 120000),
('Soporte Premium 24/7 AWS', 'Soporte técnico especializado con ingenieros certificados en arquitectura cloud y mitigación de fallos.', 85000),
('InnovaTech CyberSecurity Shield', 'Monitoreo perimetral y auditorías automatizadas de Security Groups y firewalls en tiempo real.', 67000);