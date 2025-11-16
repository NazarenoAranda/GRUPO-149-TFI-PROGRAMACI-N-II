-- DML.sql
USE tfi_segurovehicular;

-- Vehículos de prueba
INSERT INTO vehiculo (eliminado, dominio, marca, modelo, anio, nroChasis)
VALUES
  (FALSE, 'ABC123', 'Toyota', 'Corolla', 2018, 'CHASIS-0001'),
  (FALSE, 'XYZ999', 'Ford', 'Focus', 2015, 'CHASIS-0002'),
  (FALSE, 'QWE456', 'Renault', 'Megane', 2020, 'CHASIS-0003');

-- Seguros asociados (respetando 1->1)
INSERT INTO seguro_vehicular (eliminado, aseguradora, nroPoliza, cobertura, vencimiento, vehiculo_id)
VALUES
  (FALSE, 'La Segura SA', 'POL-0001', 'TODO_RIESGO', '2026-12-31', 1),
  (FALSE, 'AsegurAR', 'POL-0002', 'TERCEROS', '2025-06-30', 2),
  (FALSE, 'Protege SRL', 'POL-0003', 'RC', '2024-11-15', 3);
