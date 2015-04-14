<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Agregar_Sede.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Sede.Agregar_Sede" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="multipage">
        <section class="form-width">
            <h3>Agregar una sede</h3>
             <div class="section-form">
                 <div class="container">
		            <div class="row row-centered">
		              <div class="col-xs-6 col-centered col-min">
		  	            <input type="text" class="form-control" name="company" maxlength="40" placeholder="Nombre de la sede">
		              </div>
		              <div class="col-xs-6 col-centered col-min">
		  	            <input type="text" class="form-control" name="company" maxlength="40" placeholder="Codigo de la sede">
		              </div>
		            </div>
		            <div class="row row-centered" style="margin-top:20px;">
			            <button class="btn btn-default">Agregar</button>
		            </div>
	              </div>
            </div>
        </section>
    </div>
</asp:Content>
