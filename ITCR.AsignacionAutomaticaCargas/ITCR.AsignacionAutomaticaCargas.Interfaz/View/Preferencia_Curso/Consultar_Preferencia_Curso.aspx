<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consultar_Preferencia_Curso.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Preferencia_Curso.Consultar_Preferencia_Curso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="multipage">
        <section class="form-width">
            <h3>Consultar preferencia cursos</h3>
            <br />

            <table style="width: 100%">
                <tr>
                    <td style="width: 210px">
                        <asp:DropDownList ID="drpPeriodo" runat="server" class="form-control">
                            <asp:ListItem Text="Periodo" Value="0" Selected="True" />
                        </asp:DropDownList>
                        <asp:CompareValidator ID="cvPeriodo" runat="server" ValueToCompare="0"
                            ControlToValidate="drpPeriodo"
                            class="validation" Operator="NotEqual" ValidationGroup="vgConsultarPreferenciaCurso">* Seleccione una opción válida</asp:CompareValidator>
                    </td>

                    <td style="width: 204px">
                        <asp:Button ID="btnConsultar" runat="server" class="btn btn-default" Text="Consultar" OnClick="btnConsultar_Click" /></td>
                </tr>

            </table>
            <asp:DataGrid ID="dgPreferenciaCurso" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-striped table-hover"
                Width="100%" OnItemCommand="dgPreferenciaCurso_ItemCommand">
                <HeaderStyle Font-Size="Larger" ForeColor="Black" HorizontalAlign="Center" />
                <Columns>
                    <asp:BoundColumn DataField="idPreferenciaCurso" HeaderText="idPreferenciaCurso" Visible="False"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Prioridad" HeaderText="Prioridad"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Curso" HeaderText="Curso"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Sede" HeaderText="Sede"></asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="Editar">
                        <ItemTemplate>
                            <asp:ImageButton ID="imgEditar" runat="server" Height="20px" ImageUrl="~/Content/images/editar.png" Width="20px" CommandName="Editar" />
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="Eliminar">
                        <ItemTemplate>
                            <asp:ImageButton ID="ibtnEliminar" runat="server" class="glyphicon" ImageUrl="~/Content/images/eliminar.png" CommandName="Eliminar" />
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
            </asp:DataGrid>
        </section>
    </div>
</asp:Content>
