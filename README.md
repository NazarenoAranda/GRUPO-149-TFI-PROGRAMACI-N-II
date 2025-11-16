🚗 Sistema de Gestión de Vehículos y Seguros

Trabajo Final Integrador – Base de Datos + Java

📌 Descripción del dominio

El sistema implementa un modelo de gestión para Vehículos y sus Seguros Asociados, respetando una relación 1 a 1:
cada vehículo posee un único seguro vigente, y cada seguro pertenece exactamente a un vehículo.

El sistema permite:

Crear vehículos junto con su seguro correspondiente.

Consultar vehículos por ID o dominio.

Listar todo el registro de vehículos con sus seguros.

Actualizar datos del vehículo y/o seguro.

Realizar eliminaciones lógicas para mantener historial.

Manejar transacciones para garantizar la integridad (commit/rollback).

El proyecto combina:

Modelo de Base de Datos relacional (MySQL)

Aplicación Java con JDBC

DAO + Services + Transacciones

Validaciones de negocio para asegurar consistencia.

🛠️ Requisitos técnicos
Software necesario

Java 21 (JDK 21)

Apache NetBeans / IntelliJ / Eclipse

MySQL Server 8+

MySQL Workbench (opcional, para visualizar la BD)

Dependencias

El programa utiliza la librería oficial de MySQL:

mysql-connector-j-9.5.0


Debe estar incluida en el classpath del proyecto (en NetBeans: Libraries → Add Jar).

🗄️ Instalación de la Base de Datos

El repositorio incluye 2 archivos:

DDL.sql → crea la base y tablas

DML.sql → carga datos de prueba

Pasos para instalar la base

Abrir MySQL Workbench o tu cliente SQL preferido.

Ejecutar primero el archivo:

DDL.sql


Esto creará:

La base tfi_segurovehicular

Tablas vehiculo y seguro_vehicular

Claves primarias, foráneas e índices

Luego ejecutar:

DML.sql


Esto cargará datos iniciales para pruebas.

▶️ Cómo compilar y ejecutar el programa
1. Configurar db.properties

Dentro de src/resources/ debe existir un archivo:

db.properties


Con las credenciales de acceso a MySQL:

db.url=jdbc:mysql://localhost:3306/tfi_segurovehicular
db.user=root
db.password=tu_clave

2. Ejecutar la aplicación

Compilar el proyecto y ejecutar la clase:

main.Main

3. Flujo de uso desde el menú

El programa mostrará:

--- GESTIÓN DE VEHÍCULOS Y SEGUROS (TFI) ---
1. Crear Vehículo (con su seguro)
2. Buscar Vehículo por ID
3. Buscar Vehículo por Dominio
4. Listar todos los Vehículos
5. Actualizar Vehículo (y su seguro)
6. Eliminar Vehículo (baja lógica)
0. Salir


Recomendación para pruebas:

Crear un vehículo → verificar que se crea también su seguro.

Buscar por dominio para comprobar lectura.

Listar todos para validar hidratación (relación 1–1).

Probar actualizar y eliminar para comprobar transacciones.

🎥 Enlace al video de demostración

📌 (Aquí pegás tu link cuando lo tengas)
👉 Video de presentación

📚 Tecnologías y herramientas utilizadas

Java 21

Apache NetBeans

MySQL Server + Workbench

mysql-connector-j-9.5.0

Patrones DAO y Service

Transacciones JDBC

ChatGPT y Google Gemini como herramientas de apoyo técnico y redacción