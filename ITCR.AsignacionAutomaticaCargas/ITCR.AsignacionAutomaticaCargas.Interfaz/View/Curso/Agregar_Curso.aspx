<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Agregar_Curso.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Curso.Agregar_Curso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="multipage">
        <section class="form-width">
            <h3>Agregar un Curso</h3>
             <div class="section-form">
                 <div class="container">
		            <div class="row row-centered">
		              <div class="col-xs-6 col-centered col-min">
                          <asp:TextBox ID="txtCodigo" runat="server" class="form-control" maxlength="40" placeholder="Codigo de la sede"></asp:TextBox>
		              </div>
                        <div class="col-xs-6 col-centered col-min">
                         <asp:TextBox ID="txtNombre" runat="server" class="form-control" maxlength="40" placeholder="Nombre de la sede"></asp:TextBox>
		              </div>
		            </div>
                    <div class="row row-centered">
		              <div class="col-xs-6 col-centered col-min">
                          <asp:DropDownList ID="txtGradoAcademico" runat="server" class="form-control" AppendDataBoundItems="true" DataTextField="gradoAcademico" DataValueField="id">
                            <asp:ListItem Text="Grado Académico" Value="0" />   
                          </asp:DropDownList>
		              </div>
                        <div class="col-xs-6 col-centered col-min">
                        </div>
		            </div>
		            <div class="row row-centered" style="margin-top:20px;">
                        <asp:Button ID="btnAgregar" runat="server" class="btn btn-default" Text="Agregar" />
		            </div>
	              </div>
            </div>
        </section>
    </div>
</asp:Content>
