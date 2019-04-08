<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/Otros/msr_MasterPage_Otros.Master" AutoEventWireup="true" CodeBehind="wfrm_Solicitud_Viaje_Modificar.aspx.cs" Inherits="PL.Paginas.Catalogos_Mantenimientos.Modificar.wfrm_Solicitud_Viaje_Modificar" %>
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
                            <button type="submit" id="btn_Atras" class="button" onclick="location.href='../Listar/wfrm_Solicitud_Viaje_Listar.aspx';" style='background: url(../../../Recursos/Exit.png);'></button>
                        </div>

                    </div>
                    <form id="Vehiculo_Catalogo" method="post">
                        <div class="row">
                            <div class="col-md-6">

                                    <div>
                                    <label for="txt_Id_Solicitud">ID de la Solicitud: </label><input name="txt_Id_Solicitud" type="text" class="form-control" id="txt_Id_Solicitud" placeholder="Ingrese el ID de la Solicitud..." required=""/>
                                    </div>
                                    
                                    <div>
                                    <label for="cbx_Id_Cliente">ID del Cliente: </label><select id="cbx_Id_Cliente" >
                                        <option value="categories" selected="selected">Seleccione el ID del Cliente...</option>
                                    </select>
                                    </div>

                                    <div>
                                    <label for="txt_Ruta_Inicial">Ruta Inicial: </label><input name="txt_Ruta_Inicial" type="text" class="form-control" id="txt_Ruta_Inicial" placeholder="Ingrese la Ruta Inicial..." required=""/>
                                    </div>

                                    <div>
                                    <label for="txt_Ruta_Final">Ruta Final: </label><input name="txt_Ruta_Final" type="text" class="form-control" id="txt_Ruta_Final" placeholder="Ingrese la Ruta Final..." required=""/>
                                    </div>

                                    <div>
                                    <label for="txt_Distancia">Distancia: </label><input name="txt_Distancia" type="text" class="form-control" id="txt_Distancia" placeholder="Se Calcula los Kilometros del Recorrido..." required=""/>
                                    </div>

                                    <div>
                                    <label for="txt_Costo">Costo Aproximado: </label><input name="txt_Costo" type="text" class="form-control" id="txt_Costo" placeholder="Se Calcula el Costo Aproximado..." required=""/>
                                    </div>

                                    <div>
                                    <label for="cbx_Id_Tipo_Vehiculo">ID Tipo Vehiculo: </label><select id="cbx_Id_Tipo_Vehiculo" >
                                        <option value="categories" selected="selected">Seleccione el ID del Tipo de Vehiculo...</option>
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
