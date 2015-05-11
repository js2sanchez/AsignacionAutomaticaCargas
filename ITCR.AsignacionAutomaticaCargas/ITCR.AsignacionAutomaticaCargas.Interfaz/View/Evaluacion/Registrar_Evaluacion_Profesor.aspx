<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registrar_Evaluacion_Profesor.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Evaluacion.Registrar_Evaluacion_Profesor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="multipage">
        <section class="form-width">
            <h3>Registrar evaluación profesor</h3>
            <div class="section-form">
                <div class="container">
                    <div class="row row-centered">
                        <div class="col-xs-6 col-centered col-min">
                            <asp:TextBox ID="txtCedulaIdentidad" runat="server" class="form-control" MaxLength="9" placeholder="Cédula de identidad" ToolTip="Ejemplo: 109768342"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvCedula" runat="server" ControlToValidate="txtCedulaIdentidad"
                                class="validation" ValidationGroup="vgRegistrarEvaluacionProfesor">* Dato requerido</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regCedula" runat="server" ControlToValidate="txtCedulaIdentidad"
                                ValidationExpression="([0-9]){9}"
                                class="validation" ValidationGroup="vgRegistrarEvaluacionProfesor">* Formato inválido</asp:RegularExpressionValidator>
                        </div>
                        <div class="col-xs-6 col-centered col-min">
                            <asp:DropDownList ID="drpPeriodo" runat="server" class="form-control">
                                <asp:ListItem Text="Periodo" Value="0" Selected="True" />
                            </asp:DropDownList>
                            <asp:CompareValidator ID="cvPeriodo" runat="server" ValueToCompare="0"
                                ControlToValidate="drpPeriodo"
                                class="validation" Operator="NotEqual" ValidationGroup="vgRegistrarEvaluacionProfesor">* Seleccione una opción válida</asp:CompareValidator>
                        </div>
                    </div>

                    <div class="row row-centered">
                        <div class="col-xs-6 col-centered col-min">
                            <asp:TextBox ID="txtCalificacion" runat="server" class="form-control" MaxLength="6" placeholder="Calificación período" ToolTip="Ejemplo: 75.58"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCalificacion"
                                class="validation" ValidationGroup="vgRegistrarEvaluacionProfesor">* Dato requerido</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regCalificacion" runat="server" ControlToValidate="txtCalificacion"
                                ValidationExpression="[0-9]{2,3}\.?[0-9]{2}"
                                class="validation" ValidationGroup="vgRegistrarEvaluacionProfesor">* Formato inválido</asp:RegularExpressionValidator>
                        </div>

                    </div>
                    <div class="row row-centered" style="margin-top: 20px;">
                        <asp:Button ID="btnAgregar" runat="server" class="btn btn-default" Text="Agregar" OnClick="btnAgregar_Click" />
                    </div>
                </div>
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
                            location.href = "/View/Evaluacion/Consultar_Evaluacion_Profesor.aspx";
                        }
                    }
                }
            });
            //Limpia los campos del form
            $(".section-form").find('.form-control').val('');
        }

        function profesorInvalido() {
            bootbox.dialog({
                closeButton: true,
                title: "Profesor no existe ",
                message: " ",
                buttons: {
                    success: {
                        label: "Aceptar",
                        className: "btn-default",
                    }
                }
            });
        }
    </script>
</asp:Content>
