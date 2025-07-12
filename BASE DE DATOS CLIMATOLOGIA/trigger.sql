DELIMITER $$

CREATE TRIGGER registrar_climatico
AFTER INSERT ON calidad_aire
FOR EACH ROW
BEGIN
    -- Declaración de variables
    DECLARE zona_nombre VARCHAR(45) DEFAULT NULL;
    DECLARE mes_nombre VARCHAR(45) DEFAULT NULL;
    DECLARE intensidad VARCHAR(45) DEFAULT NULL;
    DECLARE rango_temperatura VARCHAR(45) DEFAULT NULL;

    -- Obtener el nombre de la zona
    SELECT nombre INTO zona_nombre
    FROM zona
    WHERE idzona = NEW.idzona
    LIMIT 1;

    -- Obtener el nombre del mes
    SELECT mes INTO mes_nombre
    FROM mes
    WHERE idmes = NEW.idmes
    LIMIT 1;

    -- Obtener intensidad calórica y rango de temperatura
    SELECT ic.intensidad, ic.rango_temperatura 
    INTO intensidad, rango_temperatura
    FROM intensidad_calorifica ic
    WHERE ic.idubicacion = (
        SELECT idubicacion
        FROM ubicacion
        WHERE idzona = NEW.idzona
        LIMIT 1
    )
    LIMIT 1;


    -- Insertar los datos recopilados en la tabla registro_climatico
    INSERT INTO registro_climatico (
        idzona, nombre_zona, calidad_aire, ppm, porcentaje_calidad, idmes, mes_nombre,
        intensidad_calorifica, rango_temperatura
    )
    VALUES (
        NEW.idzona, zona_nombre, NEW.calidad, NEW.ppm, NEW.porcentaje, NEW.idmes, mes_nombre,
        intensidad, rango_temperatura
    );
END $$

DELIMITER ;

