<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consultar_Asignacion.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Asignacion.Consultar_Asignacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="multipage">
        <section class="form-width">
            <h3>Asignacion de grupos</h3>
            <table style="width: 100%">

                <tr>
                    <td style="width: 210px">
                        <asp:DropDownList ID="drpPeriodo" runat="server" class="form-control" Width="200px">
                            <asp:ListItem Text="Periodo" Value="0" Selected="True" />
                        </asp:DropDownList>
                        <asp:CompareValidator ID="cvPeriodo" runat="server" ValueToCompare="0"
                            ControlToValidate="drpPeriodo"
                            class="validation" Operator="NotEqual" ValidationGroup="vgConsultarAsignacion" ForeColor="Black">* Seleccione una opción válida</asp:CompareValidator>
                    </td>
                    <td style="height: 20px" colspan="2">
                        <asp:Button ID="btnConsultar" runat="server" class="btn btn-default" Text="Consultar" OnClick="btnConsultar_Click" /></td>
                </tr>

            </table>


            <asp:Panel ID="PanelTablaAsignacion" runat="server">
               <asp:DataGrid ID="dgGrupos" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-striped table-hover"
                Width="100%" OnItemCommand="dgGrupo_ItemCommand">
                <HeaderStyle Font-Size="Larger" ForeColor="Black" HorizontalAlign="Center" />
                <Columns>
                    <asp:BoundColumn DataField="idGrupo" HeaderText="idGrupo" Visible="False"></asp:BoundColumn>
                    <asp:BoundColumn DataField="numeroGrupo" HeaderText="Número"></asp:BoundColumn>
                    <asp:BoundColumn DataField="fk_idDepartamento" HeaderText="Departamento"></asp:BoundColumn>
                    <asp:BoundColumn DataField="fk_idFranjaHoraria" HeaderText="Horario"></asp:BoundColumn>
                    <asp:BoundColumn DataField="fk_idCurso" HeaderText="Curso"></asp:BoundColumn>
                    <asp:BoundColumn DataField="fk_idPeriodo" HeaderText="Periodo"></asp:BoundColumn>
                    <asp:BoundColumn DataField="fk_idSede" HeaderText="Sede"></asp:BoundColumn>
                    <asp:BoundColumn DataField="fk_idProfesor" HeaderText="Profesor"></asp:BoundColumn>
                  
                </Columns>
            </asp:DataGrid>
            </asp:Panel>


        </section>
    </div>
</asp:Content>
