<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consultar_Periodo.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Periodo.Consultar_Periodo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="multipage">
        <section class="form-width">
            <h3>Consultar periodos</h3>
            <asp:DataGrid ID="dgPeriodos" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-striped table-hover"
                Width="100%" OnItemCommand="dgPeriodos_ItemCommand">
                <HeaderStyle Font-Size="Larger" ForeColor="Black" HorizontalAlign="Center" />
                <Columns>
                    <asp:BoundColumn DataField="idPeriodo" HeaderText="idCurso" Visible="False"></asp:BoundColumn>
                    <asp:BoundColumn DataField="numeroPeriodo" HeaderText="Código"></asp:BoundColumn> 
                     <asp:BoundColumn DataField="fk_idModalidad" HeaderText="Modalidad"></asp:BoundColumn>                  
                    <asp:BoundColumn DataField="anyo" HeaderText="Nombre"></asp:BoundColumn>

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
