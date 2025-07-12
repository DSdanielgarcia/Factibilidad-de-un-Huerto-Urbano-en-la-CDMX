-- stored procedure para calcular los promedio climaticos de precipitacion y evapotranspiracion agurpado por zona y mes en la ciudad de mexico
/*DELIMITER $$

CREATE PROCEDURE CalcularPromediosClimaticos()
BEGIN
    SELECT 
        z.nombre AS Zona,
        m.mes AS Mes,
        AVG(p.promedio) AS PromedioPrecipitacion,
        AVG(e.nivel_de_evapotranspiracion) AS PromedioEvapotranspiracion
    FROM 
        climatologia.zona z
    JOIN 
        climatologia.ubicacion u ON z.idzona = u.idzona
    JOIN 
        climatologia.precipitacion p ON u.idubicacion = p.idprecipitacion
    JOIN 
        climatologia.mes m ON p.idmes = m.idmes
    JOIN 
        climatologia.evapotranspiracion e ON p.idprecipitacion = e.idprecipitacion
    GROUP BY 
        z.nombre, m.mes, m.idmes
    ORDER BY 
        z.nombre, m.idmes;
END $$

DELIMITER ;*/
-- llamada al stored procedure
CALL CalcularPromediosClimaticos();
