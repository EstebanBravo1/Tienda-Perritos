# Innova Backend - API de Productos (Catálogo de Mascotas)

Este repositorio contiene la capa lógica (Backend) de la aplicación, desarrollada en **Node.js** con **Express**. Se encarga de conectarse a la base de datos MySQL de forma segura y exponer un endpoint para consultar el catálogo de productos.

## 🏗️ Arquitectura y Tecnologías
- **Runtime:** Node.js (v18-alpine)
- **Framework:** Express.js
- **Base de Datos:** MySQL (Conector `mysql2/promise`)
- **Contenedorización:** Docker
- **CI/CD:** Despliegue automático hacia AWS EC2 mediante GitHub Actions y AWS Systems Manager (SSM).

## 🔒 Variables de Entorno (.env)
El backend requiere de un archivo `.env` en la raíz para conectarse a la base de datos de manera interna dentro de la VPC de AWS. El pipeline de CI/CD inyecta estas variables automáticamente:
- `PORT`: 3000
- `DB_HOST`: IP Privada de la instancia MySQL (ej: `172.31.23.202`)
- `DB_USER`: root
- `DB_PASSWORD`: admin123
- `DB_NAME`: tienda_perritos
- `DB_PORT`: 3306

## 🚀 Endpoints Disponibles
- **GET** `/api/productos`: Devuelve un arreglo JSON con todos los productos disponibles en la base de datos.

## 🐳 Cómo ejecutar localmente con Docker
Si quieres probar esta API en tu máquina, asegúrate de tener Docker instalado y ejecuta:
```bash
# Construir la imagen del backend
docker build -t innova-backend .

# Correr el contenedor en el puerto 3000
docker run -d --name innova-backend-container -p 3000:3000 innova-backend
