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
                          <asp:RequiredFieldValidator ID="rfvCodigo" runat="server" ControlToValidate="txtCodigo"
                              class="validation" ValidationGroup="vgRegistrarDepartamento">* Dato requerido</asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="regCodigo" runat="server" ControlToValidate="txtCodigo"
                                ValidationExpression="(([0-9A-Za-z]|-|_){2,30})"
                                class="validation" ValidationGroup="vgRegistrarDepartamento">* Formato inválido</asp:RegularExpressionValidator>
                       </div>
                       
                        <div class="col-xs-6 col-centered col-min">
                         <asp:TextBox ID="txtNombre" runat="server" class="form-control" maxlength="40" placeholder="Nombre del departamento" ToolTip="Ejemplo: Ingienería en Computación"></asp:TextBox>
		                   <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre"
                                class="validation" ValidationGroup="vgRegistrarDepartamento">* Dato requerido</asp:RequiredFieldValidator>

                        </div>
		            </div>
		            <div class="row row-centered" style="margin-top:20px;">
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
                            location.href = "/View/Departamento/Consultar_Departamento.aspx";
                        }
                    }
                }
            });
            //Limpia los campos del form
            $(".section-form").find('.form-control').val('');
        }
    </script>
</asp:Content>
