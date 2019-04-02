<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/msr_Navegacion_PL.Master" AutoEventWireup="true" CodeBehind="wfrm_Cuenta_Pago_Mantenimiento_PL.aspx.cs" Inherits="PL.Paginas.wfrm_Cuenta_Pago_Mantenimiento_PL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="forms">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-heading">

                        <div>
                            <button type="submit" id="btn_Guardar" class="button" style='background: url(../Recursos/Save.png);'></button>
                            <button type="reset" id="btn_Limpiar" class="button" style='background: url(../Recursos/Refresh.png);'></button>
                            <button type="submit" id="btn_Atras" class="button" onclick="location.href='wfrm_Cuenta_Pago_Catalogo_PL.aspx';" style='background: url(../Recursos/Exit.png);'></button>
                        </div>
                    </div>
                    <form id="Vehiculo_Catalogo" method="post">
                        <div class="row">
                            <div class="col-md-6">

                                    <div>
                                    <label for="txt_Id_Cuenta">ID Cuenta: </label><input name="id_Cuenta" type="text" class="form-control" id="txt_Id_Cuenta" placeholder="Ingrese el ID de la Cuenta..." required=""/>
                                    </div>
                                    
                                    <div>
                                    <label for="txt_Nombre">Nombre: </label><input name="txt_Nombre" type="text" class="form-control" id="txt_Nombre" placeholder="Ingrese el Nombre..." required=""/>
                                    </div>

                                    <div>
                                    <label for="txt_Apellido1">Apellido 1: </label><input name="txt_Apellido1" type="text" class="form-control" id="txt_Apellido1" placeholder="Ingrese el Apellido 1..." required=""/>
                                    </div>

                                    <div>
                                    <label for="txt_Apellido2">Apellido 2: </label><input name="txt_Apellido2" type="text" class="form-control" id="txt_Apellido2" placeholder="Ingrese el Apellido 2..." required=""/>
                                    </div>

                                    <div>
                                    <label for="txt_Correo">Correo: </label><input name="txt_Correo" type="text" class="form-control" id="xtx_Correo" placeholder="Ingrese el Correo..." required=""/>
                                    </div>

                                    <div>
                                    <label for="txt_Telefono">Telefono: </label><input name="txt_Telefono" type="text" class="form-control" id="txt_Telefono" placeholder="Ingrese el Telefono..." required=""/>
                                    </div>

                                    <div>
                                    <label for="cbx_Id_Pregunta_Seguridad">Pregunta de Seguridad: </label><select id="cbx_Id_Pregunta_Seguridad" >
                                        <option value="categories" selected="selected">Seleccione la Pregunta...</option>
                                    </select>
                                    </div>

                                    <div>
                                    <label for="txt_Respuesta_Seguridad">Respuesta de seguridad: </label><input name="txt_Respuesta_Seguridad" type="text" class="form-control" id="txt_Respuesta_Seguridad" placeholder="Ingrese la Respuesta..." required=""/>
                                    </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
