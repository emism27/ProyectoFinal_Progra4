<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/Otros/msr_MasterPage_Otros.Master" AutoEventWireup="true" CodeBehind="wfrm_Encabezado_Modificar.aspx.cs" Inherits="PL.Paginas.Catalogos_Mantenimientos.Modificar.wfrm_Encabezado_Modificar" %>
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
                            <button type="submit" id="btn_Atras" class="button" onclick="location.href='../Listar/wfrm_Encabezado_Listar.aspx';" style='background: url(../../../Recursos/Exit.png);'></button>
                        </div>

                    </div>
                    <form id="Vehiculo_Catalogo" method="post">
                        <div class="row">
                            <div class="col-md-6">

                                    <div>
                                    <label for="txt_Id_Encabezado">ID Encabezado: </label><input name="txt_Id_Encabezado" type="text" class="form-control" id="txt_Id_Encabezado" placeholder="Ingrese el ID del Encabezado..." required=""/>
                                    </div>

                                    <div>
                                    <label for="txt_Fecha">Fecha: </label><input name="txt_Fecha" type="text" class="form-control" id="txt_Fecha" placeholder="Ingrese de la Fecha..." required=""/>
                                    </div>

                                    <div>
                                    <label for="cbx_Id_Viaje">ID Viaje: </label><select id="cbx_Id_Viaje" >
                                        <option value="categories" selected="selected">Seleccione el ID del Viaje...</option>
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
