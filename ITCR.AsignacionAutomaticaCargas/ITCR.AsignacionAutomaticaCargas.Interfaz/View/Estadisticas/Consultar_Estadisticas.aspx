<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consultar_Estadisticas.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Estadisticas.ConsultarEstadisticas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <div class="multipage">
        <section class="form-width">
            <h3>Consultar estadistica</h3>
            <div class="section-form">
                <div class="container">

                        <div class="col-xs-6 col-centered col-min">
                            <asp:DropDownList ID="drpPeriodo" runat="server" class="form-control">
                                <asp:ListItem Text="Todos" Value="0" Selected="True" />
                            </asp:DropDownList>
                            <asp:CompareValidator ID="cvPeriodo" runat="server" ValueToCompare="0"
                                ControlToValidate="drpPeriodo"
                                class="validation" Operator="NotEqual" ValidationGroup="vgConsultarEstadistica">* Seleccione una opción válida</asp:CompareValidator>
                        </div>

                           <div class="row row-centered" style="margin-top: 20px;">
                        <asp:Button ID="btnConsultar" runat="server" class="btn btn-default" Text="Consultar" OnClick="btnConsultar_Click" />
                    </div>
                    </div>
                      
            </div>

        </section>
    </div>

</asp:Content>
