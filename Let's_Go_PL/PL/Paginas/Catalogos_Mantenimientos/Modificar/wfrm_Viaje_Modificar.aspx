<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/Otros/msr_MasterPage_Otros.Master" AutoEventWireup="true" CodeBehind="wfrm_Viaje_Modificar.aspx.cs" Inherits="PL.Paginas.Catalogos_Mantenimientos.Modificar.wfrm_Viaje_Modificar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <script src="../../../Scripts_Validacion/js_Validacion_TBL_Viaje_TBL_Encabezado_TBL_Detalle_TBL_Comision.js"></script>

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
                            <button type="submit" id="btn_Atras" class="button" onclick="location.href='../Listar/wfrm_Viaje_Listar.aspx';" style='background: url(../../../Recursos/Exit.png);'></button>
                        </div>

                    </div>
                    <form id="Vehiculo_Catalogo" method="post">
                        <div class="row">
                            <div class="col-md-6">

                                    <div>
                                    <label for="txt_Id_VIaje">ID del Viaje: </label><input name="txt_Id_VIaje" type="text" class="form-control" id="txt_Id_VIaje" placeholder="Ingrese el ID del Viaje..." required=""/>
                                    </div>
                                    
                                    <div>
                                    <label for="cbx_Id_Conductor">ID del Conductor: </label><select id="cbx_Id_Conductor" >
                                        <option value="categories" selected="selected">Seleccione el ID del Conductor...</option>
                                    </select>
                                    </div>

                                    <div>
                                    <label for="cbx_Id_Solicitud">ID de la solicitud: </label><select id="cbx_Id_Solicitud" >
                                        <option value="categories" selected="selected">Seleccione el ID de la solicitud...</option>
                                    </select>
                                    </div>

                                    <div>
                                    <label for="cbx_Id_Estado">ID del Estado: </label><select id="Select1" >
                                        <option value="categories" selected="selected">Seleccione el ID del Estado...</option>
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
