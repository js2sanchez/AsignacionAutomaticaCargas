--TIPO USUARIO
insert into dbo.tipousuario(tipoUsuario) values('Administrador');
insert into dbo.tipousuario(tipoUsuario) values('Profesor');
select * from dbo.tipoUsuario;
--delete from dbo.tipoUsuario where tipoUsuario = 'Administrador';
--delete from dbo.tipoUsuario where tipoUsuario = 'Profesor';
--DBCC CHECKIDENT (tipoUsuario, RESEED, 0);

--TIPO PROFESOR
insert into dbo.tipoProfesor (tipoProfesor) values ('Plaza');
insert into dbo.tipoProfesor (tipoProfesor) values ('Interino');
select * from tipoProfesor;

-- Jornada Laboral 
insert into dbo.JornadaLaboral (tipoJornadaLaboral, eliminado) values ('25%',0);
insert into dbo.JornadaLaboral (tipoJornadaLaboral, eliminado) values ('50%',0);
insert into dbo.JornadaLaboral (tipoJornadaLaboral, eliminado) values ('100%',0);
insert into dbo.JornadaLaboral (tipoJornadaLaboral, eliminado) values ('133%',0);
select * from dbo.JornadaLaboral;

-- Grado Academico 
insert into dbo.GradoAcademico (gradoAcademico, abreviaturaGrado,eliminado)
 values ('Bachillerato', 'BC',0);
insert into dbo.GradoAcademico (gradoAcademico, abreviaturaGrado,eliminado)
 values ('Maestria', 'MC',0);
select * from gradoAcademico;

-- Contactos
insert into dbo.TipoContacto (tipoContacto) values ('Email');
insert into dbo.TipoContacto (tipoContacto) values ('Telefono');
insert into dbo.TipoContacto (tipoContacto) values ('Direccion');
insert into dbo.TipoContacto (tipoContacto) values ('Celular');
select * from dbo.TipoContacto;