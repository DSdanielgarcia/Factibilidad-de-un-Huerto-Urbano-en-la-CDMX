-- precipitacion promedio por mes
/*SELECT m.mes AS mes, p.promedio
FROM mes m
JOIN precipitacion p ON m.idmes = p.idmes;*/

-- calidad del aire por zona y mes
/*SELECT z.nombre AS zona, m.mes AS mes, c.calidad, c.porcentaje
FROM calidad_aire c
JOIN zona z ON c.idzona = z.idzona
JOIN mes m ON c.idmes = m.idmes;*/

/*SELECT u.alcaldia, e.nivel_de_evapotranspiracion
FROM evapotranspiracion e
JOIN ubicacion u ON e.idmes = u.idubicacion
ORDER BY e.nivel_de_evapotranspiracion DESC LIMIT 1; -- Mayor evapotranspiración

SELECT u.alcaldia, e.nivel_de_evapotranspiracion
FROM evapotranspiracion e
JOIN ubicacion u ON e.idmes = u.idubicacion
ORDER BY e.nivel_de_evapotranspiracion ASC LIMIT 1; -- Menor evapotranspiración*/

-- mayor probabilidad de calor intenso
/*SELECT u.alcaldia, i.intensidad, i.rango_temperatura
FROM intensidad_calorifica i
JOIN ubicacion u ON i.idubicacion = u.idubicacion
WHERE i.intensidad = 'Alto';*/

SELECT 
    z.nombre AS zona, 
    u.alcaldia, 
    m.mes AS mes, 
    c.calidad, 
    c.porcentaje
FROM 
    calidad_aire c
JOIN 
    zona z ON c.idzona = z.idzona
JOIN 
    mes m ON c.idmes = m.idmes
JOIN 
    ubicacion u ON c.idzona = u.idzona
ORDER BY 
    z.nombre, u.alcaldia, m.mes;


