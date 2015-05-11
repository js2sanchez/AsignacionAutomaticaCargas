<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu_Administrador.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.Views.Administrator.Administrator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="adminpage">
    <section class="hero-container">
        <figure class="hero-figure">
     		 <div class="hero-image"></div>
        </figure>
		<div class="hero-content">
			<div class="inner-content">
				<h1 class="inner"> ¡Bienvenido! </h1>
			</div>
		</div>
	</section>
    <section class="content-options">
        <div class="col-xs-12 col-sm-9 col-md-9 col-md col-center">
				<ul class="row list-unstyled">
					<li class="col-md-4 col-sm-4">
						<h3>Cursos</h3>
						<a href="/View/Curso/Consultar_Curso.aspx"> Consultar</a><br>
						<a href="/View/Curso/Agregar_Curso.aspx"> Agregar</a> 
					</li>
					<li class="col-md-4 col-sm-4">
						<h3>Departamentos</h3>
						<a href="/View/Departamento/Consultar_Departamento.aspx"> Consultar</a><br>
						<a href="/View/Departamento/Agregar_Departamento.aspx"> Agregar</a>
					</li>
					<li class="col-md-4 col-sm-4">
						<h3>Grupos</h3>
						<a href="/View/Grupo/Consultar_Grupo.aspx"> Consultar</a><br>
						<a href="/View/Grupo/Agregar_Grupo.aspx"> Agregar</a>
					</li>
				</ul>
				<ul class="row list-unstyled">
					<li class="col-md-4 col-sm-4">
						<h3>Sedes</h3>
						<a href="/View/Sede/Consultar_Sede.aspx"> Consultar</a><br>
						<a href="/View/Sede/Agregar_Sede.aspx"> Agregar</a>
					</li>
					<li class="col-md-4 col-sm-4">
						<h3>Periodos</h3>
						<a href="/View/Periodo/Consultar_Periodo.aspx"> Consultar</a><br>
						<a href="/View/Periodo/Agregar_Periodo.aspx"> Agregar</a>
					</li>
                    <li class="col-md-4 col-sm-4">
						<h3>Administradores</h3>
						<a href="/View/Administrador/Consultar_Administrador.aspx"> Consultar</a><br>
						<a href="/View/Administrador/Agregar_Administrador.aspx"> Agregar</a>
					</li>
				</ul>
				<ul class="row list-unstyled">
					<li class="col-md-4 col-sm-4">
						<h3>Profesores</h3>
						<a href="/View/Profesor/Consultar_Profesores.aspx">Consultar</a><br>
						<a href="/View/Profesor/Agregar_Profesor.aspx"> Agregar</a>
					</li>
					<li class="col-md-4 col-sm-4">
						<h3>Franjas horarias</h3>
						<a href="/View/Franja_Horaria/Consultar_Franja_Horaria.aspx">Consultar</a><br>
						<a href="/View/Franja_Horaria/Agregar_FranjaHoraria.aspx"> Agregar</a>
					</li>
					<li class="col-md-4 col-sm-4">
						<h3>Procesos</h3>
						<a href="#">Consultar</a><br>
						<a href="#"> Agregar</a>
					</li>
				</ul>
			</div>
        </section>
        <section class="footer">
            <div class="col-xs-10 col-md-7 col-center text-center">
                <h2> Instituto Tecnologico de Costa Rica </h2>
                <h4> Copyright © 2015 Tech Forward All Rights Reserved </h4>
            </div>
        </section>
    </div>
</asp:Content>