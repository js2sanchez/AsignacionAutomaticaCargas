--TIPO USUARIO
insert into DB_AsignacionCargas.dbo.tipousuario(tipoUsuario) values('Administrador');
insert into DB_AsignacionCargas.dbo.tipousuario(tipoUsuario) values('Profesor');
select * from DB_AsignacionCargas.dbo.tipoUsuario;
--delete from dbo.tipoUsuario where tipoUsuario = 'Administrador';
--delete from dbo.tipoUsuario where tipoUsuario = 'Profesor';
--DBCC CHECKIDENT (tipoUsuario, RESEED, 0);

--TIPO PROFESOR
insert into DB_AsignacionCargas.dbo.tipoProfesor (tipoProfesor) values ('Plaza');
insert into DB_AsignacionCargas.dbo.tipoProfesor (tipoProfesor) values ('Interino');
select * from DB_AsignacionCargas.dbo.tipoProfesor;

-- Jornada Laboral 
insert into DB_AsignacionCargas.dbo.JornadaLaboral (tipoJornadaLaboral, eliminado) values ('25%',0);
insert into DB_AsignacionCargas.dbo.JornadaLaboral (tipoJornadaLaboral, eliminado) values ('50%',0);
insert into DB_AsignacionCargas.dbo.JornadaLaboral (tipoJornadaLaboral, eliminado) values ('100%',0);
insert into DB_AsignacionCargas.dbo.JornadaLaboral (tipoJornadaLaboral, eliminado) values ('133%',0);
select * from DB_AsignacionCargas.dbo.JornadaLaboral;

-- Grado Academico 
insert into DB_AsignacionCargas.dbo.GradoAcademico (gradoAcademico, abreviaturaGrado,eliminado)
 values ('Bachillerato', 'BC',0);
insert into DB_AsignacionCargas.dbo.GradoAcademico (gradoAcademico, abreviaturaGrado,eliminado)
 values ('Maestria', 'MC',0);
select * from DB_AsignacionCargas.dbo.gradoAcademico;

-- Contactos
insert into DB_AsignacionCargas.dbo.TipoContacto (tipoContacto) values ('Telefono');
insert into DB_AsignacionCargas.dbo.TipoContacto (tipoContacto) values ('Correo');
insert into DB_AsignacionCargas.dbo.TipoContacto (tipoContacto) values ('Direccion');
insert into DB_AsignacionCargas.dbo.TipoContacto (tipoContacto) values ('Celular');
select * from DB_AsignacionCargas.dbo.TipoContacto;

-- Modalidad
insert into DB_AsignacionCargas.dbo.modalidad(codigoModalidad,modalidad,eliminado) values ('Sem', 'Semestre',0);
insert into DB_AsignacionCargas.dbo.modalidad(codigoModalidad,modalidad,eliminado) values ('Bi', 'Bimestre',0);
insert into DB_AsignacionCargas.dbo.modalidad(codigoModalidad,modalidad,eliminado) values ('A', 'Año',0);
insert into DB_AsignacionCargas.dbo.modalidad(codigoModalidad,modalidad,eliminado) values ('Tri', 'Trimeste',0);
select * from DB_AsignacionCargas.dbo.modalidad;

-- Contactos
insert into DB_AsignacionCargas.dbo.TipoPrioridad (tipoPrioridad,eliminado) values ('A',0);
insert into DB_AsignacionCargas.dbo.TipoPrioridad (tipoPrioridad,eliminado) values ('B',0);
insert into DB_AsignacionCargas.dbo.TipoPrioridad (tipoPrioridad,eliminado) values ('C',0);
insert into DB_AsignacionCargas.dbo.TipoPrioridad (tipoPrioridad,eliminado) values ('D',0);
select * from DB_AsignacionCargas.dbo.TipoPrioridad;
