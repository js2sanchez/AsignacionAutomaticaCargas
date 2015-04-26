<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consultar_Sede.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Sede.Consultar_Sede" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        function custom_alert(msg) {
            var box = bootbox.dialog({
                closeButton: false,
                message: msg,
                buttons: {
                    success: {
                        label: "Aceptar",
                        className: "btn-primary"
                    }
                }
            });

            box.bind("shown.bs.modal", function () {
                box.find("btn-primary:first").focus();
            });
        }

        function finalizar() {
            bootbox.dialog({
                closeButton: false,
                message: "¡Felicidades! Usted está dando un paso importante para tener una vejez activa. En este momento su cuenta de usuario quedará inactiva, una vez que se hayan verificado que sus datos son correctos, la misma se activará para que Usted pueda ofrecer sus servicios.",
                title: "Ha completado el registro satisfactoriamente",
                buttons: {
                    success: {
                        label: "Volver a la página principal",
                        className: "btn-primary",
                        callback: function () {
                            location.href = "/Default.aspx";
                        }
                    }
                }
            });
        }

        function aceptarTerminos() {
            custom_alert("Usted debe aceptar los términos y condiciones para poder finalizar el registro. Si no desea aceptarlos, presione el botón 'Salir sin guardar', esto cancelará el proceso de registro sin guardar ningún dato.");
        }

        function endConfirmation() {
            bootbox.dialog({
                closeButton: false,
                title: "Cancelar el proceso de registro",
                message: "¿Está seguro que desea salir sin guardar?",
                buttons: {
                    success: {
                        label: "No, deseo continuar en el formulario",
                        className: "btn-primary"
                    },
                    main: {
                        label: "Sí, estoy seguro",
                        className: "btn-primary",
                        callback: function () {
                            location.href = "/Default.aspx";
                        }
                    }
                }
            });
        }

        function eliminarEstudio(index) {
            bootbox.dialog({
                closeButton: false,
                title: "Eliminar estudio",
                message: "¿Está seguro que desea eliminar este estudio?",
                buttons: {
                    success: {
                        label: "No, quiero mantenerlo",
                        className: "btn-primary"
                    },
                    main: {
                        label: "Sí, quiero eliminarlo",
                        className: "btn-primary",
                        callback: function () {
                            eliminarFila("<%= dgSedes.ClientID %>", index);
                            PageMethods.eliminarEstudio(index, OnSuccess, OnError);
                        }
                    }
                }
            });
            }

            function validarTelefonosClient(oSrc, args) {
                args.IsValid = (window.txtTelefonoHabitacion.Text != "" || window.txtCelular.Text != "");
            }
            function eliminarExperiencia(index) {
                bootbox.dialog({
                    closeButton: false,
                    title: "Eliminar experiencia laboral",
                    message: "¿Está seguro que desea eliminar esta experiencia laboral?",
                    buttons: {
                        success: {
                            label: "No, quiero mantenerla",
                            className: "btn-primary"
                        },
                        main: {
                            label: "Sí, quiero eliminarla",
                            className: "btn-primary",
                            callback: function () {
                                eliminarFila("<%= dgSedes.ClientID %>", index);
                                PageMethods.eliminarExperiencia(index, OnSuccess, OnError);
                            }
                        }
                    }
                });
            }

            function validarUsuarioClient(oSrc, args) {
                args.IsValid = window.CARACTERES_MINIMOS <= args.Value.Length
                                                && args.Value.Length <= window.CARACTERES_MAXIMOS;
            }

            function eliminarFila(id, rowindex) {
                var tabla = document.getElementById(id);
                tabla.deleteRow(rowindex + 1);
            }

            function OnSuccess(response) {
                custom_alert("El proceso de eliminación se llevó a cabo correctamente.");
            }
            function OnError(error) {
                custom_alert(error);
            }
    </script>

    <div class="multipage">
        <section class="form-width">
            <h3>Consultar sedes</h3>
            <asp:DataGrid ID="dgSedes" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-striped table-hover"
                Width="100%" OnItemCommand="dgSedes_ItemCommand">
                <HeaderStyle Font-Size="Larger" ForeColor="Black" HorizontalAlign="Center" />
                <Columns>
                    <asp:BoundColumn DataField="idSede" HeaderText="idSede" Visible="False"></asp:BoundColumn>
                    <asp:BoundColumn DataField="codigoSede" HeaderText="Código"></asp:BoundColumn>
                    <asp:BoundColumn DataField="nombreSede" HeaderText="Nombre"></asp:BoundColumn>
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


