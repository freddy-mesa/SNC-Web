--#region Ubicacion
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (1, 1, 'Laboratorios de Ingeniería Eléctronica','MATADERO', 1);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (2, 1, 'Talleres de Ingeniería Eléctronica y Electromecánica','TALLERIEE', 1);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (3, 1, 'Suministro y Talleres','SUMINISTRO', 1);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (4, 1, 'Laboratorios Generales de Ingeniería','LABING', 2);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (5, 1, 'Departamentos de Ingeniería','DEPING', 2);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (6, 1, 'Ciencias Básicas I','CIENBASI', 2);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (7, 1, 'Ciencias Básicas II','CIENBASII', 2);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (8, 1, 'Aulas 1','AULAS1', 3);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (9, 1, 'Aulas 2','AULAS2', 3);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (10, 1, 'Aulas 3','AULAS3', 3);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (11, 1, 'Aulas 4','AULAS4', 3);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (12, 1, 'Centro de Estudiantes','CENTROEST', 3);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (13, 1, 'Biblioteca','BIBLIOTECA', 3);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (14, 1, 'Padre Arroyo','PADARROYO', 2);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (15, 1, 'Edificio Administrativo','ADMINISTRACION', 7);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (16, 1, 'Ciencias de la Salud','CIENSALUD', 3);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (17, 1, 'Salón Multiusos','MULTIUSOS', 1);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (18, 1, 'Centro de Tecnología y Educación Permanente','TEP', 3);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (19, 1, 'Kiosko Universitario','KIOSKO', 1);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (20, 1, 'Arquitectura','ARQUITECTURA', 2);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (21, 1, 'Departamento de Tecnología de la Información','DEPIT', 1);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (22, 1, 'Capilla','CAPILLA', 1);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (23, 1, 'Colegio','COLEGIO', 2);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (24, 1, 'Profesores I','PROFEI', 3);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (25, 1, 'Profesores II','PROFEII', 2);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (26, 1, 'Teatro','TEATRO', 2);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (27, 1, 'Postgrado','POSTGRADO', 2);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (28, 1, 'Piscina','PISCINA', 1);
Insert Into Ubicacion (id,version,nombre,abreviacion, cantidad_De_Plantas) values (29, 1, 'Gimnasio','GIMNASIO', 3);
--#endregion

--#region Nodos
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (1,1,1,1,'Laboratorios de Ingeniería Electrónica',1);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (2,1,2,2,'Talleres de Ingeniería Electrónica y Electromecánica',1);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (3,1,3,3,'Suministro y Talleres',1);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (4,1,4,4,'Laboratorios Generales de Ingeniería',1);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (5,1,5,5,'Departamentos de Ingeniería',1);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (6,1,6,6,'Ciencias Básicas I',1);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (7,1,7,7,'Ciencias Básicas II',1);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (8,1,8,8,'Aulas 1',1);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (9,1,9,9,'Aulas 2',1);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (10,1,10,10,'Aulas 3',1);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (11,1,11,11,'Aulas 4',1);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (12,1,12,12,'Centro de Estudiantes',1);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (13,1,13,13,'Biblioteca',1);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (14,1,14,14,'Padre Arroyo',0);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (15,1,15,15,'Edificio Administrativo',1);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (16,1,16,16,'Ciencias de la Salud',1);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (17,1,17,17,'Salón Multiusos',1);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (18,1,18,18,'Centro de Tecnología y Educación Permanente',1);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (19,1,19,19,'Kiosko',1);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (20,1,20,20,'Arquitectura',1);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (21,1,21,21,'Tecnología de la Información',1);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (22,1,22,22,'Capilla',1);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (23,1,23,23,'Colegio Juan XVIII',1);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (24,1,24,24,'Profesores I',1);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (25,1,25,25,'Profesores II',1);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (26,1,26,26,'Teatro Universitario',1);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (27,1,27,27,'Postgrado',1);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (28,1,28,28,'Piscina Universitaria',1);
Insert Into Nodo (id, version, ubicacion_id, edificio, nombre, activo) values (29,1,29,29,'Gimnasio Universitario',1);
Insert Into Nodo (id, version, nombre, activo) values (30,1,'Node 1',1);
Insert Into Nodo (id, version, nombre, activo) values (31,1,'Node 2',1);
Insert Into Nodo (id, version, nombre, activo) values (32,1,'Node 3',1);
Insert Into Nodo (id, version, nombre, activo) values (33,1,'Node 3.5',1);
Insert Into Nodo (id, version, nombre, activo) values (34,1,'Node 4',1);
Insert Into Nodo (id, version, nombre, activo) values (35,1,'Node 4.5',1);
Insert Into Nodo (id, version, nombre, activo) values (36,1,'Node 5',1);
Insert Into Nodo (id, version, nombre, activo) values (37,1,'Node 6',1);
Insert Into Nodo (id, version, nombre, activo) values (38,1,'Node 6.5',1);
Insert Into Nodo (id, version, nombre, activo) values (39,1,'Node 7',1);
Insert Into Nodo (id, version, nombre, activo) values (40,1,'Node 8',1);
Insert Into Nodo (id, version, nombre, activo) values (41,1,'Node 8.5',1);
Insert Into Nodo (id, version, nombre, activo) values (42,1,'Node 9',1);
Insert Into Nodo (id, version, nombre, activo) values (43,1,'Node 9.5',1);
Insert Into Nodo (id, version, nombre, activo) values (44,1,'Node 10',1);
Insert Into Nodo (id, version, nombre, activo) values (45,1,'Node 11',1);
Insert Into Nodo (id, version, nombre, activo) values (46,1,'Node 12',1);
Insert Into Nodo (id, version, nombre, activo) values (47,1,'Node 13',1);
Insert Into Nodo (id, version, nombre, activo) values (48,1,'Node 14',1);
Insert Into Nodo (id, version, nombre, activo) values (49,1,'Node 15',0);
Insert Into Nodo (id, version, nombre, activo) values (50,1,'Node 16',1);
Insert Into Nodo (id, version, nombre, activo) values (51,1,'Node 17',0);
Insert Into Nodo (id, version, nombre, activo) values (52,1,'Node 18',1);
Insert Into Nodo (id, version, nombre, activo) values (53,1,'Node 19',1);
Insert Into Nodo (id, version, nombre, activo) values (54,1,'Node 20',1);
Insert Into Nodo (id, version, nombre, activo) values (55,1,'Node 20.5',1);
Insert Into Nodo (id, version, nombre, activo) values (56,1,'Node 21',1);
Insert Into Nodo (id, version, nombre, activo) values (57,1,'Node 21.5',1);
Insert Into Nodo (id, version, nombre, activo) values (58,1,'Node 22',1);
Insert Into Nodo (id, version, nombre, activo) values (59,1,'Node 23',1);
Insert Into Nodo (id, version, nombre, activo) values (60,1,'Node 24',1);
Insert Into Nodo (id, version, nombre, activo) values (61,1,'Node 24.5',1);
Insert Into Nodo (id, version, nombre, activo) values (62,1,'Node 25',1);
Insert Into Nodo (id, version, nombre, activo) values (63,1,'Node 25.5',1);
Insert Into Nodo (id, version, nombre, activo) values (64,1,'Node 26',1);
Insert Into Nodo (id, version, nombre, activo) values (65,1,'Node 27',1);
Insert Into Nodo (id, version, nombre, activo) values (66,1,'Node 28',1);
Insert Into Nodo (id, version, nombre, activo) values (67,1,'Node 29',1);
Insert Into Nodo (id, version, nombre, activo) values (68,1,'Node 30',1);
Insert Into Nodo (id, version, nombre, activo) values (69,1,'Node 31',1);
Insert Into Nodo (id, version, nombre, activo) values (70,1,'Node 32',1);
Insert Into Nodo (id, version, nombre, activo) values (71,1,'Node 33',1);
Insert Into Nodo (id, version, nombre, activo) values (72,1,'Node 34',1);
Insert Into Nodo (id, version, nombre, activo) values (73,1,'Node 35',0);
Insert Into Nodo (id, version, nombre, activo) values (74,1,'Node 36',0);
Insert Into Nodo (id, version, nombre, activo) values (75,1,'Node 37',1);
Insert Into Nodo (id, version, nombre, activo) values (76,1,'Node 38',0);
Insert Into Nodo (id, version, nombre, activo) values (77,1,'Node 39',0);
Insert Into Nodo (id, version, nombre, activo) values (78,1,'Node 40',1);
Insert Into Nodo (id, version, nombre, activo) values (79,1,'Node 41',1);
Insert Into Nodo (id, version, nombre, activo) values (80,1,'Node 42',1);
Insert Into Nodo (id, version, nombre, activo) values (81,1,'Node 43',1);
Insert Into Nodo (id, version, nombre, activo) values (82,1,'Node 44',1);
Insert Into Nodo (id, version, nombre, activo) values (83,1,'Node 45',1);
Insert Into Nodo (id, version, nombre, activo) values (84,1,'Node 46',1);
Insert Into Nodo (id, version, nombre, activo) values (85,1,'Node 47',1);
Insert Into Nodo (id, version, nombre, activo) values (86,1,'Node 48',1);
Insert Into Nodo (id, version, nombre, activo) values (87,1,'Node 48.5',1);
Insert Into Nodo (id, version, nombre, activo) values (88,1,'Node 49',1);
Insert Into Nodo (id, version, nombre, activo) values (89,1,'Node 50',1);
Insert Into Nodo (id, version, nombre, activo) values (90,1,'Node 51',1);
Insert Into Nodo (id, version, nombre, activo) values (91,1,'Node 52',1);
Insert Into Nodo (id, version, nombre, activo) values (92,1,'Node 53',1);
Insert Into Nodo (id, version, nombre, activo) values (93,1,'Node 54',1);
Insert Into Nodo (id, version, nombre, activo) values (94,1,'Node 55',1);
Insert Into Nodo (id, version, nombre, activo) values (95,1,'Node 56',1);
Insert Into Nodo (id, version, nombre, activo) values (96,1,'Node 57',1);
Insert Into Nodo (id, version, nombre, activo) values (97,1,'Node 58',1);
Insert Into Nodo (id, version, nombre, activo) values (98,1,'Node 59',1);

--#endregion

--#region Coordenada_Nodo(id,version,nodo_id,latitud,longitud)
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 1, 1, 8, 19.442731,-70.683049);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 2, 1, 9, 19.443009,-70.681736);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 3, 1, 10, 19.441522,-70.683402);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 4, 1, 11, 19.443083, -70.683407);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 5, 1, 12, 19.443879, -70.682780);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 6, 1, 16, 19.443699, -70.681666);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 7, 1, 6, 19.442237, -70.683398);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 8, 1, 7, 19.442070, -70.683046);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 9, 1, 14, 19.442303, -70.684772);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 10, 1, 5, 19.441756, -70.683045);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 11, 1, 4, 19.441074, -70.682723);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 12, 1, 1, 19.440198, -70.683129);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 13, 1, 3, 19.440648, -70.683352);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 14, 1, 13, 19.443727, -70.684183);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 15, 1, 2, 19.440310, -70.682706);

Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 30, 1, 30, 19.440313, -70.683129);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 31, 1, 31, 19.440400, -70.683125);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 32, 1, 32, 19.440573, -70.683132);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 33, 1, 33, 19.440544, -70.683199);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 34, 1, 34, 19.440697, -70.683132);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 35, 1, 35, 19.440652, -70.683205);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 36, 1, 36, 19.440788, -70.682727);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 37, 1, 37, 19.440315, -70.682848);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 38, 1, 38, 19.440409, -70.682754);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 39, 1, 39, 19.440293, -70.683218);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 40, 1, 40, 19.440270, -70.683475);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 41, 1, 41, 19.440301, -70.683658);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 42, 1, 42, 19.440711, -70.683580);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 43, 1, 43, 19.440665, -70.683498);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 44, 1, 44, 19.441075, -70.683132);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 45, 1, 45, 19.441135, -70.683132);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 46, 1, 46, 19.441468, -70.683127);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 47, 1, 47, 19.441459, -70.683335);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 48, 1, 48, 19.441140, -70.682723);
--//Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 49, 1, 49);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 50, 1, 50, 19.441480, -70.682723);
--//Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 51, 1, 51);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 52, 1, 52, 19.441679, -70.682722);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 53, 1, 53, 19.441684, -70.683045);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 54, 1, 54, 19.441683, -70.683398);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 55, 1, 55, 19.441608, -70.683400);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 56, 1, 56, 19.441608, -70.683400);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 57, 1, 57, 19.441145, -70.683655);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 58, 1, 58, 19.441930, -70.683395);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 59, 1, 59, 19.441930, -70.683140);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 60, 1, 60, 19.441979, -70.683082);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 61, 1, 61, 19.442012, -70.683082);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 62, 1, 62, 19.441850, -70.683060);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 63, 1, 63, 19.441853, -70.683066);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 64, 1, 64, 19.442589, -70.683049);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 65, 1, 65, 19.442570, -70.683402);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 66, 1, 66, 19.442305, -70.683405);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 67, 1, 67, 19.442743, -70.682186);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 68, 1, 68, 19.442811, -70.681733);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 69, 1, 69, 19.443074, -70.681760);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 70, 1, 70, 19.442917, -70.681744);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 71, 1, 71, 19.443790, -70.682307);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 72, 1, 72, 19.443403, -70.682822);
--//Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 73, 1, 73);
--//Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 74, 1, 74);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 75, 1, 75, 19.443418, -70.683270);
--//Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 76, 1, 76);
--//Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 77, 1, 77");
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 78, 1, 78, 19.443836, -70.683149);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 79, 1, 79, 19.443775, -70.683777);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 80, 1, 80, 19.443732, -70.683898);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 81, 1, 81, 19.443671, -70.684035);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 82, 1, 82, 19.443652, -70.684129);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 83, 1, 83, 19.443666, -70.684180);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 84, 1, 84, 19.443378, -70.684180);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 85, 1, 85, 19.443375, -70.684515);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 86, 1, 86, 19.443272, -70.684155);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 87, 1, 87, 19.442963, -70.683967);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 88, 1, 88, 19.443165, -70.683640);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 89, 1, 89, 19.443158, -70.683489);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 90, 1, 90, 19.443319, -70.683390);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 91, 1, 91, 19.443167, -70.683107);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 92, 1, 92, 19.443163, -70.683390);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 93, 1, 93, 19.442731, -70.682021);

--//New Nodes
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 94, 1, 94, 19.440695, -70.683214);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 95, 1, 95, 19.440589, -70.683217);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 96, 1, 96, 19.440715, -70.683501);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 97, 1, 97, 19.440581, -70.683506);
Insert Into Coordenada_Nodo(id,version,nodo_id,longitud,latitud) values ( 98, 1, 98, 19.440582, -70.683577);
--#endregion

--#region Neighbor
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (1, 1, 30, 1);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (2, 1, 30, 31);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (3, 1, 30, 39);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (4, 1, 30, 37);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (5, 1, 31, 32);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (6, 1, 31, 39);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (7, 1, 32, 34);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (8, 1, 32, 33);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (9, 1, 32, 37);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (10, 1, 33, 3);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (11, 1, 34, 35);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (12, 1, 34, 36);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (13, 1, 34, 44);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (14, 1, 35, 3);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (15, 1, 36, 38);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (16, 1, 36, 4);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (17, 1, 37, 38);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (18, 1, 37, 2);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (19, 1, 38, 2);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (20, 1, 39, 40);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (21, 1, 40, 41);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (22, 1, 42, 56);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (23, 1, 42, 43);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (24, 1, 43, 3);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (25, 1, 44, 45);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (26, 1, 44, 47);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (27, 1, 45, 48);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (28, 1, 45, 46);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (29, 1, 46, 47);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (30, 1, 46, 50);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (31, 1, 46, 52);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (32, 1, 46, 53);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (33, 1, 47, 10);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (34, 1, 48, 4);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (35, 1, 48, 50);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (36, 1, 50, 51);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (37, 1, 51, 52);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (38, 1, 52, 93);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (39, 1, 53, 54);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (40, 1, 53, 5);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (41, 1, 54, 58);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (42, 1, 54, 55);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (43, 1, 55, 10);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (44, 1, 56, 57);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (45, 1, 56, 10);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (46, 1, 58, 59);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (47, 1, 58, 6);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (48, 1, 59, 60);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (49, 1, 59, 62);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (50, 1, 60, 62);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (51, 1, 60, 61);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (52, 1, 61, 7);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (53, 1, 62, 63);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (54, 1, 63, 5);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (55, 1, 64, 7);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (56, 1, 64, 8);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (57, 1, 64, 65);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (58, 1, 64, 66);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (59, 1, 64, 67);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (60, 1, 65, 66);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (61, 1, 65, 11);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (62, 1, 66, 6);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (63, 1, 67, 93);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (64, 1, 67, 72);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (65, 1, 68, 93);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (66, 1, 68, 9);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (67, 1, 69, 9);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (68, 1, 69, 16);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (69, 1, 69, 70);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (70, 1, 70, 71);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (71, 1, 70, 72);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (72, 1, 71, 12);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (73, 1, 71, 16);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (74, 1, 72, 73);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (75, 1, 73, 74);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (76, 1, 73, 77);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (77, 1, 74, 75);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (78, 1, 74, 76);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (79, 1, 74, 91);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (80, 1, 75, 76);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (81, 1, 75, 90);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (82, 1, 76, 77);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (83, 1, 77, 78);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (84, 1, 78, 12);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (85, 1, 78, 79);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (86, 1, 79, 80);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (87, 1, 80, 81);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (88, 1, 80, 90);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (89, 1, 81, 82);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (90, 1, 81, 13);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (91, 1, 82, 83);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (92, 1, 82, 86);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (93, 1, 83, 84);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (94, 1, 84, 85);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (95, 1, 86, 87);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (96, 1, 87, 88);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (97, 1, 88, 89);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (98, 1, 88, 90);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (99, 1, 89, 11);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (100,1, 90, 92);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (101, 1, 91, 92);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (102, 1, 92, 11);

Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (103, 1, 94, 34);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (104, 1, 94, 3);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (105, 1, 95, 32);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (106, 1, 95, 3);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (107, 1, 96, 42);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (108, 1, 96, 3);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (109, 1, 97, 98);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (110, 1, 97, 3);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (111, 1, 98, 41);
Insert Into Neighbor(id,version,nodo_id,neighbor_id) values (112, 1, 98, 42);
--#endregion


INSERT INTO Tour values(1,1,1,CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(),'Aulas');
INSERT INTO PUNTO_REUNION_TOUR VALUES(1,1,1,1,1);
INSERT INTO PUNTO_REUNION_TOUR VALUES(2,1,2,2,1);
INSERT INTO PUNTO_REUNION_TOUR VALUES(3,1,3,3,1);
INSERT INTO PUNTO_REUNION_TOUR VALUES(4,1,4,4,1);


INSERT INTO USUARIO_FACEBOOK VALUES(1, 1, 'yandripuello@outlook.com', 10152587482388668,'Yandri', 'male', 'Puello');
INSERT INTO USUARIO_FACEBOOK VALUES(2, 1, 'mesa.freddy@gmail.com', 10153434521009768,'Freddy', 'male', 'Mesa');
INSERT INTO USUARIO_FACEBOOK VALUES(3, 1, 'ramonbrito@outlook.com', 10154933888145504,'Ramon', 'male', 'Brito'); 

INSERT INTO Usuario_Tour VALUES(1, 1, 'inconcluso', null, CURRENT_TIMESTAMP(), 1, 1);
INSERT INTO DETALLE_USUARIO_TOUR  VALUES(1,1,CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP(),1,1);
INSERT INTO DETALLE_USUARIO_TOUR  VALUES(2,1,CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP(),2,1);
INSERT INTO DETALLE_USUARIO_TOUR  VALUES(3,1,CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP(),3,1);
INSERT INTO DETALLE_USUARIO_TOUR  VALUES(4,1,CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP(),4,1);

INSERT INTO Usuario_Tour VALUES(2, 1, 'inconcluso', null, CURRENT_TIMESTAMP(), 2, 1);

INSERT INTO Usuario_Tour VALUES(3, 1, 'finalizado', null, CURRENT_TIMESTAMP(), 3, 1);

INSERT INTO Usuario_Tour VALUES(4, 1, 'finalizado', null, CURRENT_TIMESTAMP(), 1, 2);

INSERT INTO Usuario_Tour VALUES(5, 3, 'finalizado', null, CURRENT_TIMESTAMP(), 2, 2);

INSERT INTO Usuario_Tour VALUES(6, 3, 'inconcluso', null, CURRENT_TIMESTAMP(), 3, 2);

INSERT INTO Usuario_Tour VALUES(7, 3, 'inconcluso', null, CURRENT_TIMESTAMP(), 1, 3);

INSERT INTO Usuario_Tour VALUES(7, 3, 'finalizado', null, CURRENT_TIMESTAMP(), 2, 3);
