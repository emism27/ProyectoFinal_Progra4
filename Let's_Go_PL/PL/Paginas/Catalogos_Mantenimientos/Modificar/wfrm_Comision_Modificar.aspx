<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/Otros/msr_MasterPage_Otros.Master" AutoEventWireup="true" CodeBehind="wfrm_Comision_Modificar.aspx.cs" Inherits="PL.Paginas.Catalogos_Mantenimientos.Modificar.wfrm_Comision_Modificar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <script src="../../../Scripts_Validacion/js_Validacione_TBL_Viaje_TBL_Encabezado_TBL_Detalle_TBL_Comision.js"></script>

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
                            <button type="submit" id="btn_Atras" class="button" onclick="location.href='../Listar/wfrm_Comision_Listar.aspx';" style='background: url(../../../Recursos/Exit.png);'></button>
                        </div>

                    </div>
                    <form id="Vehiculo_Catalogo" method="post">
                        <div class="row">
                            <div class="col-md-6">

                                    <div>
                                    <label for="txt_Id_Comision">ID Comisión: </label><input name="txt_Id_Comision" type="text" class="form-control" id="txt_Id_Comision" placeholder="Ingrese el ID de la Comisión..." required=""/>
                                    </div>

                                    <div>
                                    <label for="txt_Comision">Comisión: </label><input name="txt_Comision" type="text" class="form-control" id="txt_Comision" placeholder="Ingrese la Comisión..." required=""/>
                                    </div>

                                    <div>
                                    <label for="txt_Descripcion">Descripción: </label><input name="txt_Descripcion" type="text" class="form-control" id="txt_Descripcion" placeholder="Ingrese la Descripción..." required=""/>
                                    </div>

                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
