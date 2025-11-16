-- DDL.sql
CREATE DATABASE IF NOT EXISTS tfi_segurovehicular
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_unicode_ci;
USE tfi_segurovehicular;

-- Tabla Vehiculo (A)
CREATE TABLE IF NOT EXISTS vehiculo (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  eliminado BOOLEAN NOT NULL DEFAULT FALSE,
  dominio VARCHAR(10) NOT NULL UNIQUE,
  marca VARCHAR(50) NOT NULL,
  modelo VARCHAR(50) NOT NULL,
  anio INT,
  nroChasis VARCHAR(50) UNIQUE
);

-- Tabla SeguroVehicular (B)
-- Relación 1->1: cada seguro referencia exactamente a un vehiculo
-- Implementado con FK única en la tabla B (vehiculo_id UNIQUE)
CREATE TABLE IF NOT EXISTS seguro_vehicular (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  eliminado BOOLEAN NOT NULL DEFAULT FALSE,
  aseguradora VARCHAR(80) NOT NULL,
  nroPoliza VARCHAR(50) UNIQUE,
  cobertura ENUM('RC','TERCEROS','TODO_RIESGO') NOT NULL,
  vencimiento DATE NOT NULL,
  vehiculo_id BIGINT NOT NULL UNIQUE,
  CONSTRAINT fk_seguro_vehiculo_vehiculo
    FOREIGN KEY (vehiculo_id) REFERENCES vehiculo(id)
    ON DELETE CASCADE
);

-- Índices útiles
CREATE INDEX idx_vehiculo_dominio ON vehiculo(dominio);
CREATE INDEX idx_seguro_nropoliza ON seguro_vehicular(nroPoliza);
