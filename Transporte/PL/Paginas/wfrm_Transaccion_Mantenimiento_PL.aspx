<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/msr_Navegacion_PL.Master" AutoEventWireup="true" CodeBehind="wfrm_Transaccion_Mantenimiento_PL.aspx.cs" Inherits="PL.Paginas.wfrm_Transaccion_Mantenimiento_PL" %>
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
                            <button type="submit" id="btn_Atras" class="button" onclick="location.href='wfrm_Transaccion_Catalogo_PL.aspx';" style='background: url(../Recursos/Exit.png);'></button>
                        </div>
                    </div>
                    <form id="Vehiculo_Catalogo" method="post">
                        <div class="row">
                            <div class="col-md-6">

                                    <div>
                                    <label for="txt_Id_Transaccion">ID de Transaccion: </label><input name="txt_Id_Transaccion" type="text" class="form-control" id="txt_Id_Transaccion" placeholder="Ingrese el ID de Transaccion..." required=""/>
                                    </div>
                                    
                                    <div>
                                    <label for="cbx_Id_Viaje">ID del Viaje: </label><select id="cbx_Id_Viaje" >
                                        <option value="categories" selected="selected">Seleccione el ID del Viaje...</option>
                                    </select>
                                    </div>

                                    <div>
                                    <label for="cbx_Id_Cuenta_Pago">ID de la Cuenta de Pago: </label><select id="cbx_Id_Cuenta_Pago" >
                                        <option value="categories" selected="selected">Seleccione el ID de la Cuenta...</option>
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
