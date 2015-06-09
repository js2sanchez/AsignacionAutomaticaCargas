<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Procesar.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Procesar.Agregar_Procesar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="multipage">
        <section class="form-width">
            <h3>Procesar asignación de cursos </h3>
            <br />
            <p> Verifique que se cumplan los siguientes requisitos:</p>
            <br />
            <p> 1. Se definieron los grupos para el período respectivo. </p>
            <p> 2. Los profesores ingresaron sus preferencias de cursos y horarios. </p>
            <br />
            <table style="width: 100%">
                <tr>
                    <td style="width: 210px">
                        <asp:DropDownList ID="drpPeriodo" runat="server" class="form-control">
                            <asp:ListItem Text="Periodo" Value="0" Selected="True" />
                        </asp:DropDownList>
                        <asp:CompareValidator ID="cvPeriodo" runat="server" ValueToCompare="0"
                            ControlToValidate="drpPeriodo"
                            class="validation" Operator="NotEqual" ValidationGroup="vgProcesar">* Seleccione una opción válida</asp:CompareValidator>
                    </td>

                    <td style="width: 204px">
                        <asp:Button ID="btnConsultar" runat="server" class="btn btn-default" Text="Consultar"  OnClick="btnConsultar_Click"  /></td>
                </tr>

            </table>
        </section>
    </div>
</asp:Content>
