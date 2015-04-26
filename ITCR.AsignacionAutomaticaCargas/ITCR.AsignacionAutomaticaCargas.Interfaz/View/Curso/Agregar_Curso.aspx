<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Agregar_Curso.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Curso.Agregar_Curso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="multipage">
        <section class="form-width">
            <h3>Agregar un Curso</h3>
             <div class="section-form">
                 <div class="container">
		            <div class="row row-centered">
		              <div class="col-xs-6 col-centered col-min">
                          <asp:TextBox ID="txtCodigo" runat="server" class="form-control" maxlength="40" placeholder="Código del curso" ToolTip="Ejemplo: IC2102"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="rfvCodigo" runat="server" ControlToValidate="txtCodigo"
                                class="validation" ValidationGroup="vgAgregarCurso">* Dato requerido</asp:RequiredFieldValidator>
		              </div>
                        <div class="col-xs-6 col-centered col-min">
                         <asp:TextBox ID="txtNombre" runat="server" class="form-control" maxlength="40" placeholder="Nombre del curso" ToolTip="Ejemplo: Programación Orientada a objetos"></asp:TextBox>
		                  <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre"
                                class="validation" ValidationGroup="vgAgregarCurso">* Dato requerido</asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="regNombre" runat="server" ControlToValidate="txtNombre"
                                ValidationExpression="([a-zA-ZÀ-ÿ ])*"
                                class="validation" ValidationGroup="vgAgregarCurso">* Formato inválido</asp:RegularExpressionValidator>
                        </div>
		            </div>
                    <div class="row row-centered">
		              <div class="col-xs-6 col-centered col-min">
                          <asp:DropDownList ID="drpGradoAcademico" runat="server" class="form-control">
                            <asp:ListItem Text="Grado Académico" Value="0" />   
                          </asp:DropDownList>
		              </div>
                        <div class="col-xs-6 col-centered col-min">
                        </div>
		            </div>
		            <div class="row row-centered">
                        <asp:Button ID="btnAgregar" runat="server" class="btn btn-default" Text="Agregar" OnClick="btnAgregar_Click" />
		            </div>
	              </div>
            </div>
        </section>
    </div>
    <script  type="text/javascript">
        function agregar() {
            bootbox.dialog({
                closeButton: true,
                title: " Se agregó exitosamente ",
                message: " ",
                buttons: {
                    success: {
                        label: "Aceptar",
                        className: "btn-default",
                        callback: function () {
                            location.href = "/View/Curso/Consultar_Curso.aspx";
                        }
                    }
                }
            });
            //Limpia los campos del form
            $(".section-form").find('.form-control').val('');
        }
    </script>
</asp:Content>
