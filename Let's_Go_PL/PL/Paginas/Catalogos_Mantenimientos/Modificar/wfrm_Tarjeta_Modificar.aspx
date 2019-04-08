<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/Otros/msr_MasterPage_Otros.Master" AutoEventWireup="true" CodeBehind="wfrm_Tarjeta_Modificar.aspx.cs" Inherits="PL.Paginas.Catalogos_Mantenimientos.Modificar.wfrm_Tarjeta_Modificar" %>
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
                            <button type="submit" id="btn_Atras" class="button" onclick="location.href='../Listar/wfrm_Tarjeta_Listar.aspx';" style='background: url(../../../Recursos/Exit.png);'></button>
                        
                        </div>
                    </div>
                    <form id="Vehiculo_Catalogo" method="post">
                        <div class="row">
                            <div class="col-md-6">

                                    <div>
                                    <label for="txt_Id_Numero_Tarjeta">Numero de tarjeta: </label><input name="txt_Id_Numero_Tarjeta" type="text" class="form-control" id="txt_Id_Numero_Tarjeta" placeholder="Ingrese el Número de Tarjeta..." required=""/>
                                    </div>

                                    <div>
                                    <label for="txt_Numero_Cuenta">Numero de Cuenta: </label><input name="txt_Numero_Cuenta" type="text" class="form-control" id="txt_Numero_Cuenta" placeholder="Ingrese el Número de Cuenta..." required=""/>
                                    </div>

                                    <div>
                                    <label for="txt_Fecha_Vencimiento">Fecha de Vencimiento: </label><input name="txt_Fecha_Vencimiento" type="text" class="form-control" id="txt_Fecha_Vencimiento" placeholder="Ingrese la Fecha de Vencimiento..." required=""/>
                                    </div>

                                    <div>
                                    <label for="txt_CVV">CVV: </label><input name="txt_CVV" type="text" class="form-control" id="txt_CVV" placeholder="Ingrese el CVV..." required=""/>
                                    </div>
                                    
                                    <div>
                                    <label for="cbx_Id_Tipo_Tarjeta">ID Tipo de Tarjeta: </label><select id="cbx_Id_Tipo_Tarjeta" >
                                        <option value="categories" selected="selected">Seleccione el Tipo de Tarjeta...</option>
                                    </select>
                                    </div>

                                    <div>
                                    <label for="cbx_Id_Banco">ID Banco: </label><select id="cbx_Id_Banco" >
                                        <option value="categories" selected="selected">Seleccione el ID del Banco...</option>
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
