<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consultar_Franja_Horaria.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Franja_Horaria.Consultar_Franja_Horaria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <div class="multipage">
        <section class="form-width">
            <h3>Consultar franja horaria</h3>
            <asp:DataGrid ID="dgFranjaHoraria" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-striped table-hover"
                Width="100%" OnItemCommand="dgFranjaHoraria_ItemCommand">
                <HeaderStyle Font-Size="Larger" ForeColor="Black" HorizontalAlign="Center" />
                <Columns>
                    <asp:BoundColumn DataField="idFranjaHoraria" HeaderText="idFranjaHoraria" Visible="False"></asp:BoundColumn>
                    <asp:BoundColumn DataField="codigoFranja" HeaderText="Código"></asp:BoundColumn> 
                     <asp:BoundColumn DataField="horaInicio" HeaderText="Hora Inicio"></asp:BoundColumn> 
                     <asp:BoundColumn DataField="horaFinal" HeaderText="Hora Final"></asp:BoundColumn> 
                    <asp:BoundColumn HeaderText ="Dias"></asp:BoundColumn>                 
                   

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
