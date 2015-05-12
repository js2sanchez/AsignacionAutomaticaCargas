<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Agregar_Periodo.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Periodo.Agregar_Periodo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="multipage">
        <section class="form-width">
            <p class="title1">Agregar un periodo</p>
            <div class="section-form">
                <div class="container">
                    <div class="row row-centered">
                        <div class="col-xs-6 col-centered col-min">
                            <asp:TextBox ID="txtNumeroPeriodo" runat="server" class="form-control" MaxLength="9" placeholder="Número de periodo" ToolTip="Ejemplo: 01"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvNumeroPeriodo" runat="server" ControlToValidate="txtNumeroPeriodo"
                                class="validation" ValidationGroup="vgRegistrarPeriodo">* Dato requerido</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regNumeroPeriodo" runat="server" ControlToValidate="txtNumeroPeriodo"
                                ValidationExpression="([0-9]){2}"
                                class="validation" ValidationGroup="vgRegistrarPeriodo">* Formato inválido</asp:RegularExpressionValidator>
                          </div>
                           <div class="col-xs-6 col-centered col-min">
                            <asp:TextBox ID="txtAnno" runat="server" class="form-control" MaxLength="40" placeholder="Año" ToolTip="Ejemplo: 2015"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvAnno" runat="server" ControlToValidate="txtAnno"
                                class="validation" ValidationGroup="vgRegistrarAdministrador">* Dato requerido</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revAnno" runat="server" ControlToValidate="txtAnno"
                                ValidationExpression="([0-9]){4}"
                                class="validation" ValidationGroup="vgRegistrarPeriodo">* Formato inválido</asp:RegularExpressionValidator>
                        </div>
                        </div>
                      <div class="row row-centered">                
                        <div class="col-xs-6 col-centered col-min">
                            <asp:DropDownList ID="drpModalidad" runat="server" class="form-control">
                                <asp:ListItem Text="Modalidad" Value="0" />
                            </asp:DropDownList>
                         </div>
                         <div class="col-xs-6 col-centered col-min">
                         </div>
                    </div>
                </div>
            </div>
            <div class="row row-centered" style="margin-top: 20px;">
                <asp:Button ID="btnAgregar" runat="server" class="btn btn-default" Text="Agregar" OnClick="btnAgregar_Click" />
            </div>
        </section>
    </div>
    <script type="text/javascript">
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
                             location.href = "/View/Periodo/Consultar_Periodo.aspx";
                        }
                     }
                 }
             });
             //Limpia los campos del form
             $(".section-form").find('.form-control').val('');
         }
    </script>
</asp:Content>