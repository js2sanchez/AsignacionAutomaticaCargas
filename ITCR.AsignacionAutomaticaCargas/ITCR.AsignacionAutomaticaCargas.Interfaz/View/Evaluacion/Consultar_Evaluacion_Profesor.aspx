<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consultar_Evaluacion_Profesor.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Evaluacion.Consultar_Evaluacion_Profesor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="multipage">
        <section class="form-width">
            <h3>Consultar evaluación de profesores</h3>
            <table style="width: 100%">
                <tr>
                    <td style="height: 20px" colspan="2">
                        <asp:RadioButtonList ID="rblTodosProfesores" runat="server" CssClass="generalLabels" AutoPostBack="True" OnSelectedIndexChanged="rblTodosProfesores_SelectedIndexChanged" RepeatDirection="Horizontal" Width="320px">
                            <asp:ListItem>Todos los profesores</asp:ListItem>
                            <asp:ListItem>Un profesor</asp:ListItem>
                        </asp:RadioButtonList></td>
                    <td style="height: 20px" colspan="2">
                        <asp:Button ID="btnConsultar" runat="server" class="btn btn-default" Text="Consultar" OnClick="btnConsultar_Click" /></td>
                </tr>
                <tr>
                    <td style="width: 210px">
                        <asp:DropDownList ID="drpPeriodo" runat="server" class="form-control" Width="200px">
                            <asp:ListItem Text="Periodo" Value="0" Selected="True" />
                        </asp:DropDownList>
                        <asp:CompareValidator ID="cvPeriodo" runat="server" ValueToCompare="0"
                            ControlToValidate="drpPeriodo"
                            class="validation" Operator="NotEqual" ValidationGroup="vgConsultarEvaluacionProfesorTodos" ForeColor="Black">* Seleccione una opción válida</asp:CompareValidator>
                    </td>
                    <td style="width: 204px">
                        <asp:TextBox ID="txtCedula" runat="server" class="form-control" MaxLength="9" placeholder="Cédula" ToolTip="Ejemplo: 107258741" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCedula" runat="server" ControlToValidate="txtCedula"
                            class="validation" ValidationGroup="vgConsultarEvaluacionProfesorUno" ForeColor="Black">* Dato requerido</asp:RequiredFieldValidator>
                        &nbsp;<br />
                        <asp:RegularExpressionValidator ID="regCedula" runat="server" ControlToValidate="txtCedula"
                            ValidationExpression="([0-9]){9}"
                            class="validation" ValidationGroup="vgConsultarEvaluacionProfesorUno" ForeColor="Black">* Formato inválido</asp:RegularExpressionValidator>
                        </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

            </table>


            <asp:Panel ID="PanelTablaTodosProfesores" runat="server">
                <asp:DataGrid ID="dgEvaluacionProfesor" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-striped table-hover"
                Width="100%" OnItemCommand="dgEvaluacionProfesor_ItemCommand">
                    <HeaderStyle Font-Size="Larger" ForeColor="Black" HorizontalAlign="Center" />
                    <Columns>
                        <asp:BoundColumn DataField="idEvaluacionProfesor" HeaderText="idEvaluacionProfesor" Visible="False"></asp:BoundColumn>
                        <asp:BoundColumn DataField="cedulaIdentidad" HeaderText="Cédula"></asp:BoundColumn>
                        <asp:BoundColumn DataField="Nombre" HeaderText="Nombre"></asp:BoundColumn>
                        <asp:BoundColumn DataField="evaluacion" HeaderText="Evaluación"></asp:BoundColumn>
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
            </asp:Panel>

            <asp:Panel ID="PanelTablaUnProfesor" runat="server">
                <asp:DataGrid ID="dgEvaluacionUnProfesor" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-striped table-hover"
                Width="100%" OnItemCommand="dgEvaluacionUnProfesor_ItemCommand">
                    <HeaderStyle Font-Size="Larger" ForeColor="Black" HorizontalAlign="Center" />
                    <Columns>
                        <asp:BoundColumn DataField="idEvaluacionProfesor" HeaderText="idEvaluacionProfesor" Visible="False"></asp:BoundColumn>
                        <asp:BoundColumn DataField="Nombre" HeaderText="Nombre"></asp:BoundColumn>
                        <asp:BoundColumn DataField="Periodo" HeaderText="Periodo"></asp:BoundColumn>
                        <asp:BoundColumn DataField="evaluacion" HeaderText="Evaluacion"></asp:BoundColumn>
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
            </asp:Panel>
        </section>
    </div>
</asp:Content>
