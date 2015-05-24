<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consultar_Preferencia_Horario.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Preferencia_Horario.Consultar_Preferencia_Horario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="multipage">
        <section class="form-width">
            <h3>Consultar grupos</h3>
            <asp:DataGrid ID="dgPreferenciaHorario" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-striped table-hover"
                Width="100%" OnItemCommand="dgPreferenciaHorario_ItemCommand">
                <HeaderStyle Font-Size="Larger" ForeColor="Black" HorizontalAlign="Center" />
                <Columns>
                    <asp:BoundColumn DataField="idPreferenciaHorarios" HeaderText="idPrefenrenciaHorarios" Visible="False"></asp:BoundColumn>
                    <asp:BoundColumn DataField="fk_idPeriodo" HeaderText="Periodo"></asp:BoundColumn>
                    <asp:BoundColumn DataField="fk_idFranjaHoraria" HeaderText="Horario con su/sus respectivos día/días"></asp:BoundColumn>
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
