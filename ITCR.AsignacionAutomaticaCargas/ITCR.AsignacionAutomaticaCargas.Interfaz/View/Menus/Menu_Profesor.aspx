﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Professor.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.Views.Professor.Professor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="professor">
        <section class="hero-container">
            <figure class="hero-figure">
                <div class="hero-image"></div>
            </figure>
            <div class="hero-content">
                <div class="inner-content">
                    <h1 class="inner">¡Bienvenido! </h1>
                </div>
            </div>
        </section>
        <section class="content-options">
            <div class="col-xs-12 col-sm-12 col-md-10 col-md col-center">
                <ul class="row list-unstyled">
                    <li class="col-md-6 col-sm-6">
                        <h3>Mi perfil</h3>
                        <a href="/View/Profesor/Consultar_DetalleProfesor.aspx">Ver mi perfil</a><br>
                    </li>
                    <li class="col-md-6 col-sm-6">
                        <h3>Solicitud de preferencia de cursos</h3>
                        <a href="/View/Preferencia_Curso/Consultar_Preferencia_Curso.aspx">Consultar</a><br>
                        <a href="/View/Preferencia_Curso/Agregar_Preferencia_Curso.aspx">Agregar</a>
                    </li>
                    <li class="col-md-6 col-sm-6">
                        <h3>Solicitud de preferencia de horarios</h3>
                        <a href="/View/Preferencia_Horario/Consultar_Preferencia_Horario.aspx">Consultar</a><br>
                        <a href="/View/Preferencia_Horario/Agregar_Preferencia_Horario.aspx">Agregar</a>
                    </li>
                </ul>
            </div>
        </section>
        <section class="footer">
            <div class="col-xs-10 col-md-7 col-center text-center">
                <h2>Instituto Tecnológico de Costa Rica </h2>
                <h4>Copyright © 2015 Tech Forward All Rights Reserved </h4>
            </div>
        </section>
    </div>
</asp:Content>
