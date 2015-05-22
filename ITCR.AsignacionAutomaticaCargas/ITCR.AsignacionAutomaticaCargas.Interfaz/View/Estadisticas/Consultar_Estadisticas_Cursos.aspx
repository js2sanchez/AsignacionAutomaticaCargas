<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consultar_Estadisticas_Cursos.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Estadisticas.ConsultarEstadisticasCursos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <div class="multipage">
        <section class="form-width">
            <h3>Cursos más solicitados</h3>
            <asp:DataGrid ID="dgEstadistica" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-striped table-hover"
                Width="100%" >
                <HeaderStyle Font-Size="Larger" ForeColor="Black" HorizontalAlign="Center" />
                <Columns>
                    <asp:BoundColumn DataField="nombreCurso" HeaderText="Nombre Curso"></asp:BoundColumn>
                    <asp:BoundColumn DataField="codigoCurso" HeaderText="Código Curso"></asp:BoundColumn>
                     <asp:BoundColumn DataField="preferencia" HeaderText="Preferencia"></asp:BoundColumn>
                    <asp:BoundColumn DataField="cantidad" HeaderText="Cantidad"></asp:BoundColumn>
                </Columns>
            </asp:DataGrid>
        </section>
    </div>
</asp:Content>