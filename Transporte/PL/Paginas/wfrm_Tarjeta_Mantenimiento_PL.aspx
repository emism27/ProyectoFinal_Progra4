<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/msr_Navegacion_PL.Master" AutoEventWireup="true" CodeBehind="wfrm_Tarjeta_Mantenimiento_PL.aspx.cs" Inherits="PL.Paginas.wfrm_Tarjeta_Mantenimiento_PL" %>
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
                            <button type="submit" id="btn_Atras" class="button" onclick="location.href='wfrm_Tarjeta_Catalogo_PL.aspx';" style='background: url(../Recursos/Exit.png);'></button>
                        </div>
                    </div>
                    <form id="Vehiculo_Catalogo" method="post">
                        <div class="row">
                            <div class="col-md-6">

                                    <div>
                                    <label for="txt_Id_Tarjeta">ID de la Tarjeta: </label><input name="txt_Id_Tarjeta" type="text" class="form-control" id="txt_Id_Tarjeta" placeholder="Ingrese el ID de la Tarjeta..." required=""/>
                                    </div>
                                    
                                    <div>
                                    <label for="cbx_Id_Usuario">ID del Usuario: </label><select id="cbx_Id_Usuario" >
                                        <option value="categories" selected="selected">Seleccione el ID del Usuario...</option>
                                    </select>
                                    </div>

                                    <div>
                                    <label for="cbx_Id_Pago">ID del Pago: </label><select id="cbx_Id_Pago" >
                                        <option value="categories" selected="selected">Seleccione el ID del Pago...</option>
                                    </select>
                                    </div>

                                    <div>
                                    <label for="txt_Fecha_Expiracion">Fecha de Expiracion: </label><input name="txt_Fecha_Expiracion" type="text" class="form-control" id="txt_Fecha_Expiracion" placeholder="Ingrese la Fecha de Expiracion..." required=""/>
                                    </div>

                                    <div>
                                    <label for="cbx_Tipo_Tarjeta">Tipo de Tarjeta: </label><select id="cbx_Tipo_Tarjeta" >
                                        <option value="categories" selected="selected">Seleccione el Tipo de Tarjeta...</option>
                                    </select>
                                    </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
