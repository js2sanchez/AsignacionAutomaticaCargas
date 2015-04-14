<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consultar_Sede.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Sede.Consultar_Sede" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="multipage">
        <section class="form-width">
            <h3>Consultar sedes</h3>
            <asp:DataGrid ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-striped table-hover"
                Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <HeaderStyle Font-Bold="True" Font-Size="Larger" ForeColor="Black" HorizontalAlign="Center" />
                <Columns>
                    <asp:BoundColumn DataField="idSede" HeaderText="idSede" Visible="False"></asp:BoundColumn>
                    <asp:BoundColumn DataField="codigo_sede" HeaderText="Código"></asp:BoundColumn>
                    <asp:BoundColumn DataField="nombre_sede" HeaderText="Nombre"></asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="Editar">
                        <ItemTemplate>
                            <asp:Label ID="ibtnEditar" runat="server" CommandName="Editar" Height="30px" CssClass="glyphicon glyphicon-pencil" style="display:block; margin:0 auto" Width="30px" />
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="Eliminar">
                        <ItemTemplate>
                            <asp:Label ID="ibtnEliminar" runat="server" CommandName="Eliminar" Height="30px" CssClass="glyphicon glyphicon-remove" style="display:block; margin:0 auto" Width="30px" />
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
            </asp:DataGrid>
        </section>
    </div>
</asp:Content>


