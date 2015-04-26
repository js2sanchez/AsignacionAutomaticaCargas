<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Agregar_Departamento.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Departamento.Agregar_Departamento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="multipage">
        <section class="form-width">
            <h3>Agregar un departamento</h3>
             <div class="section-form">
                 <div class="container">
		            <div class="row row-centered">
		              <div class="col-xs-6 col-centered col-min">
                          <asp:TextBox ID="txtCodigo" runat="server" class="form-control" maxlength="40" placeholder="Código del departamento" ToolTip="Ejemplo: IC"></asp:TextBox>
		              </div>
                        <div class="col-xs-6 col-centered col-min">
                         <asp:TextBox ID="txtNombre" runat="server" class="form-control" maxlength="40" placeholder="Nombre del departamento" ToolTip="Ejemplo: Ingienería en Computación"></asp:TextBox>
		              </div>
		            </div>
		            <div class="row row-centered" style="margin-top:20px;">
                        <asp:Button ID="btnAgregar" runat="server" class="btn btn-default" Text="Agregar" OnClick="btnAgregar_Click" />
		            </div>
	              </div>
            </div>
        </section>
    </div>
</asp:Content>
