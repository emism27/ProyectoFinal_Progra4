<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/Otros/msr_MasterPage_Otros.Master" AutoEventWireup="true" CodeBehind="wfrm_Tipo_Vehiculo_Modificar.aspx.cs" Inherits="PL.Paginas.Catalogos_Mantenimientos.Modificar.wfrm_Tipo_Vehiculo_Modificar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="../../../Scripts_Validaciones/js_Validacion_Tipo_Vehiculo.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="forms">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-heading">

                        <div>
                            <button type="submit" id="btn_Guardar" onclick="ValidarEspacios()" class="button" style='background: url(../../../Recursos/Save.png);'></button>
                            <button type="reset" id="btn_Limpiar" class="button" style='background: url(../../../Recursos/Refresh.png);'></button>
                            <button type="submit" id="btn_Atras" class="button" onclick="location.href='../Listar/wfrm_Tipo_Vehiculo_Listar.aspx';" style='background: url(../../../Recursos/Exit.png);'></button>
                        </div>
                    </div>
                    <form id="Vehiculo_Catalogo" method="post">
                        <div class="row">
                            <div class="col-md-6">

                                    <div>
                                    <label for="txt_Id_Tipo_Vehiculo">ID Tipo de Vehículo: </label><input name="txt_Id_Tipo_Vehiculo" type="text" onkeypress="return ValidarNumeros(event)" class="form-control" id="txt_Id_Tipo_Vehiculo" placeholder="Ingrese el ID..." required=""/>
                                    </div>

                                    <div>
                                    <label for="txt_Decripcion_Tipo_Vehiculo">Descripcion del Tipo de Vehículo: </label><input name="txt_Decripcion_Tipo_Vehiculo" type="text" class="form-control" id="txt_Decripcion_Tipo_Vehiculo" placeholder="Ingrese la Descipción..." required=""/>
                                    </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
