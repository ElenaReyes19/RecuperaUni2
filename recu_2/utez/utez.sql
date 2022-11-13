SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `docente` (
    `num` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `docente` (`num`) VALUES(445),(054),(084),(092),(904),(234),(965),(543);


CREATE TABLE `persona` (`name` varchar(50) NOT NULL,`lastname` varchar(50) NOT NULL,
                         `curp` varchar(50) NOT NULL,`birthday` date NOT NULL,
                        `docente_num` int(25) DEFAULT NULL,`estu_matri` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `persona` (`name`, `lastname`,`curp`, `birthday`, `docente_num`, `estu_matri`) VALUES('Lena','Reyes Alanis','REAADF20056','2002-01-19',null,'20203TN003'),
('Diana','Alanis','DIAAL20389','1997-11-01',null,'20205TN005'), ('Denis','Ramos','DISRA3245','2000-08-12',null,'20203TN018'),
('Martha','Andy','MARAD2499','2001-05-20',null,'20213TN020'),('Gerardo','Martin','GEMRT2340','2003-09-08',null,'20213TN001')
('Fer','Davila','FEDVL250O','2001-10-23',null,'20203TN030'), ('Maycol','Carmona','MRLCA2489','2000-10-19',null,'20203TN009'),
('Andrea Lili','Paredes Rey','ANPAR3909','2001-12-17',null,'20203TN005'),('Sergio','Dominguez','SERDO2398','2002-09-09',null,'20213TN013'),
('Marcos Perdro','Pedrosa Tour','MAPEPT4960','2002-07-01',null,'20203TN014'),('Melina','Saragoza','MESR031700','2001-09-04',null,'20213TN015'),
 ('Yatziri','Aguilar','YATR07803','2001-06-22',null,'20213TN010'),('Adriana','Perez','ADPZ05205','2000-02-02',null,'20203TN025'),
('Panfila','Keli','PAKL031201','2002-03-22',null,'20213TN001'),('Misael','Rofer','MIFD03085','2001-11-23',null,'20213TN019'),
 ('Kelia','Yarti','KEYA032006','2003-12-22',null,'20213TN020');


CREATE TABLE `estudiante` (
    `matri` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `tipo_lucha` (`matri`) VALUES('20203TN003'),('20205TN005'), ('20203TN018'),('20213TN020'),('20213TN001'),
 ('20203TN030'),('20203TN009'),('20203TN005'),('20213TN013'),('20203TN014'),('20213TN015'),('20213TN010'),
 ('20203TN025'),('20213TN018'),('20213TN020');

CREATE TABLE `evaluacion` (`calificacion` int(12) NOT NULL,`materia` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `tipo_lucha` (`calificacion`,`materia`) VALUES(8,'servicios'),(9,'servicios'),(10,'servicios');

ALTER TABLE `docente`
    ADD PRIMARY KEY (`num`);

ALTER TABLE `persona`
    ADD UNIQUE KEY `name` (`name`),
    ADD KEY `fk_docente` (`docente_num`),
    ADD KEY `fk_estudiante` (`estu_matri`);

ALTER TABLE `estudiante`
    ADD PRIMARY KEY (`matri`);

ALTER TABLE `evaluacion`
    ADD PRIMARY KEY (`calificacion`);

ALTER TABLE `docente`
    MODIFY `numemp` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=890;


ALTER TABLE `persona`
    MODIFY `name` varchar(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

ALTER TABLE `estudiante`
    MODIFY `matri` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

ALTER TABLE `evaluacion`
    MODIFY `calificacion` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `persona`
    ADD CONSTRAINT `fk_docente` FOREIGN KEY (`docente_num`) REFERENCES `docente` (`num`),
  ADD CONSTRAINT `fk_estudiante` FOREIGN KEY (`estu_matri`) REFERENCES `estudiante` (`matri`);
COMMIT;