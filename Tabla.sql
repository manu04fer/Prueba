
-- Crear la tabla
CREATE TABLE empleados (
    ID VARCHAR(10),
    Nombre VARCHAR(50),
    Empresa VARCHAR(50)
);

-- Insertar algunos datos de ejemplo
INSERT INTO empleados (ID, Nombre, Empresa) VALUES
('0021', 'Joel Marquinez', 'Assa'),
('0011', 'Manuel Martinez', 'Profuturo'),
('01231', 'Julian Rodriguez', 'Banco General');

-- Crear la función para retornar la información de la tabla
CREATE OR REPLACE FUNCTION obtener_empleados()
RETURNS TABLE (
    ID VARCHAR(10),
    Nombre VARCHAR(50),
    Empresa VARCHAR(50)
) AS $$
BEGIN
    RETURN QUERY SELECT * FROM empleados;
END;
$$ LANGUAGE plpgsql;
