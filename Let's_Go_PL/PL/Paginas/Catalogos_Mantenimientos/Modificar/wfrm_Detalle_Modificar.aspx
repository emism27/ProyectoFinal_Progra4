<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/Otros/msr_MasterPage_Otros.Master" AutoEventWireup="true" CodeBehind="wfrm_Detalle_Modificar.aspx.cs" Inherits="PL.Paginas.Catalogos_Mantenimientos.Modificar.wfrm_Detalle_Modificar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <section class="forms">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-heading">

                        <div>
                            <button type="submit" id="btn_Guardar" class="button" style='background: url(../../../Recursos/Save.png);'></button>
                            <button type="reset" id="btn_Limpiar" class="button" style='background: url(../../../Recursos/Refresh.png);'></button>
                            <button type="submit" id="btn_Atras" class="button" onclick="location.href='../Listar/wfrm_Detalle_Listar.aspx';" style='background: url(../../../Recursos/Exit.png);'></button>
                        </div>
                    </div>
                    <form id="Vehiculo_Catalogo" method="post">
                        <div class="row">
                            <div class="col-md-6">

                                    <div>
                                    <label for="txt_Id_Detalle">ID_Detalle: </label><input name="txt_Id_Detalle" type="text" class="form-control" id="txt_Id_Detalle" placeholder="Ingrese el ID de Detalle..." required=""/>
                                    </div>

                                    <div>
                                    <label for="cbx_Id_Encabezado">ID Encabezado: </label><select id="cbx_Id_Encabezado" >
                                        <option value="categories" selected="selected">Seleccione el ID del Encabezado...</option>
                                    </select>
                                    </div>

                                    <div>
                                    <label for="txt_SubTotal">SubTotal: </label><input name="txt_SubTotal" type="text" class="form-control" id="txt_SubTotal" placeholder="Se Muestra el Subtotal" required=""/>
                                    </div>
                                    
                                    <div>
                                    <label for="cbx_Id_Comision">ID de la Comision: </label><select id="cbx_Id_Comision" >
                                        <option value="categories" selected="selected">Seleccione el ID de la Comision...</option>
                                    </select>
                                    </div>

                                    <div>
                                    <label for="txt_Total">Total: </label><input name="txt_Total" type="text" class="form-control" id="txt_Total" placeholder="Se Muestra el Total..." required=""/>
                                    </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
