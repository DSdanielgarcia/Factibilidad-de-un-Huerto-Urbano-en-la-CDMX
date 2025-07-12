select * from mes;
select * from zona;
select * from ubicacion;
select * from precipitacion;
select * from humedad;
select * from intensidad_calorifica;
select * from evapotranspiracion;
select * from calidad_aire;
select * from registro_climatico;
/*
CREATE TABLE registro_climatico (
    idregistro INT AUTO_INCREMENT PRIMARY KEY,
    idzona INT,
    nombre_zona VARCHAR(45),
    calidad_aire VARCHAR(45),
    ppm FLOAT,
    porcentaje_calidad INT,
    idmes INT,
    mes_nombre VARCHAR(45),
    intensidad_calorifica VARCHAR(45),
    rango_temperatura VARCHAR(45),
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
*/