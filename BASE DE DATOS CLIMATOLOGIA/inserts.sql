/*INSERT INTO `mes` VALUES 
(1, 'enero'),
(2, 'febrero'),
(3, 'marzo'),
(4, 'abril'),
(5, 'mayo'),
(6, 'junio'),
(7, 'julio'),
(8, 'agosto'),
(9, 'septiembre'),
(10, 'octubre'),
(11, 'noviembre'),
(12, 'diciembre');

insert into `zona` (idzona, nombre) values
(11, 'centro'), (22, 'norte'), (33, 'oriente'),
(44, 'poniente'), (55,'sur');

INSERT INTO `ubicacion` (idubicacion, idzona, alcaldia, area_totalm2, espacio_publico_m2hab, densidad_de_poblacion) VALUES
(01, 55, 'Milpa Alta', 80.43, 2.89, 27.8),
(02, 44, 'Cuajimalpa de Morelos', 428.83, 6.81, 62.85),
(03, 55, 'Xochimilco', 776.29, 9.14, 84.81),
(04, 55, 'Tlalpan', 2917.45, 19.96, 145.81),
(05, 55, 'La Magdalena Contreras', 1184.87, 7.64, 155.18),
(06, 22, 'Miguel Hidalgo', 4427.18, 26.11, 169.66),
(07, 11, 'Coyoacán', 2166.81, 12.69, 170.56),
(08, 22, 'Cuauhtémoc', 674.53, 3.95, 170.77),
(09, 22, 'Benito Juárez', 437.94, 2.26, 193.59),
(10, 44, 'Álvaro Obregón', 5150.24, 26.66, 193.67),
(11, 22, 'Azcapotzalco', 1453.73, 7.41, 196.37),
(12, 33, 'Venustiano Carranza', 1999.74, 7.67, 259.88),
(13, 22, 'Gustavo A. Madero', 2711.59, 10.18, 267.09),
(14, 33, 'Iztacalco', 1699.08, 6.09, 277.7),
(15, 55, 'Tlálhuac', 1496.25, 5.13, 290.57),
(16, 33, 'Iztapalapa', 1300.74, 3.90, 333.52);

INSERT INTO `precipitacion` (idprecipitacion, idmes, porcentaje, promedio) VALUES
(001, 1, 0.10, 0.812857143),
(002, 2, 1.79, 15.06064935),
(003, 3, 0.01, 0.096753247),
(004, 4, 1.19, 10.04519481),
(005, 5, 4.39, 37.00467532),
(006, 6, 13.98, 117.8049351),
(007, 7, 18.03, 151.8564935),
(008, 8, 30.48, 256.7901299),
(009, 9, 20.64, 173.8712987),
(010, 10, 4.99, 42.07662338),
(011, 11, 3.56, 29.96611688),
(012, 12, 0.84, 7.057194805);

INSERT INTO `humedad` (idhumedad, idmes, porcentaje) VALUES
(01, 1, 49.73),
(02, 2, 43.54),
(03, 3, 43.10),
(04, 4, 42.88),
(05, 5, 49.79),
(06, 6, 62.68),
(07, 7, 65.19),
(08, 8, 66.00),
(09, 9, 67.91),
(10, 10, 62.88),
(11, 11, 58.37),
(12, 12, 52.82);

INSERT INTO `intensidad_calorifica` (idintensidad, idubicacion, intensidad, rango_temperatura) VALUES
(001, 10, 'Alto', '34 a 37.6 °C'),  -- Álvaro Obregón
(002, 10, 'Bajo', '26 a 29.9 °C'),  -- Álvaro Obregón
(003, 10, 'Medio', '30 a 33.9 °C'),  -- Álvaro Obregón
(004, 11, 'Alto', '34 a 37.6 °C'),  -- Azcapotzalco
(005, 11, 'Medio', '30 a 33.9 °C'),  -- Azcapotzalco
(006, 9, 'Alto', '34 a 37.6 °C'),  -- Benito Juárez
(007, 7, 'Alto', '34 a 37.6 °C'),  -- Coyoacán
(008, 7, 'Medio', '30 a 33.9 °C'),  -- Coyoacán
(009, 2, 'Bajo', '26 a 29.9 °C'),  -- Cuajimalpa de Morelos
(010, 2, 'Medio', '30 a 33.9 °C'),  -- Cuajimalpa de Morelos
(011, 8, 'Alto', '34 a 37.6 °C'),  -- Cuauhtémoc
(012, 8, 'Medio', '30 a 33.9 °C'),  -- Cuauhtémoc
(013, 13, 'Alto', '34 a 37.6 °C'),  -- Gustavo A. Madero
(014, 13, 'Medio', '30 a 33.9 °C'),  -- Gustavo A. Madero
(015, 14, 'Alto', '34 a 37.6 °C'),  -- Iztacalco
(016, 14, 'Medio', '30 a 33.9 °C'),  -- Iztacalco
(017, 16, 'Alto', '34 a 37.6 °C'),  -- Iztapalapa
(018, 16, 'Medio', '30 a 33.9 °C'),  -- Iztapalapa
(019, 5, 'Medio', '30 a 33.9 °C'),  -- La Magdalena Contreras
(020, 6, 'Alto', '34 a 37.6 °C'),  -- Miguel Hidalgo
(021, 6, 'Medio', '30 a 33.9 °C'),  -- Miguel Hidalgo
(022, 1, 'Bajo', '26 a 29.9 °C'),  -- Milpa Alta
(023, 1, 'Medio', '30 a 33.9 °C'),  -- Milpa Alta
(024, 15, 'Alto', '34 a 37.6 °C'),  -- Tláhuac
(025, 15, 'Medio', '30 a 33.9 °C'),  -- Tláhuac
(026, 4, 'Bajo', '26 a 29.9 °C'),  -- Tlalpan
(027, 4, 'Medio', '30 a 33.9 °C'),  -- Tlalpan
(028, 12, 'Alto', '34 a 37.6 °C'),  -- Venustiano Carranza
(029, 12, 'Medio', '30 a 33.9 °C'),  -- Venustiano Carranza
(030, 3, 'Alto', '34 a 37.6 °C'),  -- Xochimilco
(031, 3, 'Medio', '30 a 33.9 °C');  -- Xochimilco

INSERT INTO evapotranspiracion (idevapotranspiracion, idmes, idprecipitacion, nivel_de_evapotranspiracion, balance_hidrico) VALUES
(1001, 1, 1, 20, -19.19), 
(1002, 2, 2, 28, -12.94), 
(1003, 3, 3, 40, -39.90), 
(1004, 4, 4, 48, -37.95), 
(1005, 5, 5, 60, -22.99),  
(1006, 6, 6, 60, 57.80), 
(1007, 7, 7, 52, 99.86), 
(1008, 8, 8, 52, 204.79), 
(1009, 9, 9, 48, 125.87), 
(1010, 10, 10, 48, -5.92), 
(1011, 11, 11, 28, 1.97), 
(1012, 12, 12, 20, -12.94);*/

/*INSERT INTO `calidad_aire` (idcalidad_aire, idzona, idmes, calidad, porcentaje, ppm) VALUES
(001, 11, 1, 'Bueno', 28.20, 0.000467),
(002, 11, 2, 'Bueno', 27.90, 0.000463),
(003, 11, 3, 'Bueno', 25.80, 0.000428),
(004, 11, 4, 'Bueno', 20.10, 0.000333),
(005, 11, 5, 'Bueno', 15.00, 0.000248),
(006, 11, 6, 'Bueno', 13.40, 0.000222),
(007, 11, 7, 'Bueno', 11.60, 0.000193),
(008, 11, 8, 'Bueno', 18.90, 0.000313),
(009, 11, 9, 'Bueno', 20.70, 0.000344),
(010, 11, 10, 'Bueno', 22.20, 0.000368),
(011, 11, 11, 'Bueno', 31.10, 0.000516),
(012, 11, 12, 'Bueno', 24.90, 0.000413),
(013, 22, 1, 'Bueno', 20.90, 0.000346),
(014, 22, 2, 'Bueno', 19.30, 0.000320),
(015, 22, 3, 'Bueno', 18.00, 0.000299),
(016, 22, 4, 'Bueno', 15.40, 0.000255),
(017, 22, 5, 'Bueno', 15.10, 0.000250),
(018, 22, 6, 'Bueno', 10.30, 0.000171),
(019, 22, 7, 'Bueno', 9.30, 0.000155),
(020, 22, 8, 'Bueno', 10.60, 0.000176),
(021, 22, 9, 'Bueno', 12.50, 0.000208),
(022, 22, 10, 'Bueno', 11.40, 0.000189),
(023, 22, 11, 'Bueno', 18.50, 0.000306),
(024, 22, 12, 'Bueno', 20.30, 0.000337),
(025, 33, 1, 'Regular', 100.00, 0.001658),
(026, 33, 2, 'Regular', 86.20, 0.001429),
(027, 33, 3, 'Regular', 82.80, 0.001373),
(028, 33, 4, 'Regular', 56.70, 0.000940),
(029, 33, 5, 'Regular', 54.90, 0.000911),
(030, 33, 6, 'Bueno', 43.20, 0.000717),
(031, 33, 7, 'Bueno', 33.30, 0.000552),
(032, 33, 8, 'Bueno', 45.00, 0.000746),
(033, 33, 9, 'Regular', 50.10, 0.000830),
(034, 33, 10, 'Regular', 61.30, 0.001017),
(035, 33, 11, 'Regular', 85.00, 0.001409),
(036, 33, 12, 'Regular', 90.40, 0.001499),
(037, 44, 1, 'Regular', 52.30, 0.000867),
(038, 44, 2, 'Regular', 52.50, 0.000871),
(039, 44, 3, 'Bueno', 48.80, 0.000809),
(040, 44, 4, 'Bueno', 33.30, 0.000552),
(041, 44, 5, 'Bueno', 28.20, 0.000467),
(042, 44, 6, 'Bueno', 27.10, 0.000450),
(043, 44, 7, 'Bueno', 24.80, 0.000411),
(044, 44, 8, 'Bueno', 31.50, 0.000523),
(045, 44, 9, 'Bueno', 36.90, 0.000611),
(046, 44, 10, 'Bueno', 39.50, 0.000655),
(047, 44, 11, 'Regular', 56.80, 0.000941),
(048, 44, 12, 'Regular', 54.80, 0.000908),
(049, 55, 1, 'Regular', 66.20, 0.001097),
(050, 55, 2, 'Regular', 52.80, 0.000875),
(051, 55, 3, 'Regular', 52.20, 0.000866),
(052, 55, 4, 'Bueno', 42.80, 0.000710),
(053, 55, 5, 'Bueno', 41.00, 0.000679),
(054, 55, 6, 'Bueno', 25.40, 0.000421),
(055, 55, 7, 'Bueno', 30.10, 0.000499),
(056, 55, 8, 'Bueno', 42.20, 0.000700),
(057, 55, 9, 'Bueno', 39.70, 0.000659),
(058, 55, 10, 'Bueno', 48.70, 0.000807),
(059, 55, 11, 'Regular', 63.40, 0.001051),
(060, 55, 12, 'Regular', 54.00, 0.000896);*/

insert into `calidad_aire` (idcalidad_aire, idzona, idmes, calidad, porcentaje, ppm) VALUES
(060, 55, 12, 'Regular', 54.00, 0.000896);