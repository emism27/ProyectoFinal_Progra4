<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/Otros/msr_MasterPage_Otros.Master" AutoEventWireup="true" CodeBehind="wfrm_Vehiculo_Modificar.aspx.cs" Inherits="PL.Paginas.Catalogos_Mantenimientos.Modificar.wfrm_Vehiculo_Modificar" %>
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
                            <button type="submit" id="btn_Atras" class="button" onclick="location.href='../Listar/wfrm_Vehiculo_Listar.aspx';" style='background: url(../../../Recursos/Exit.png);'></button>
                        
                        </div>
                    </div>
                    <form id="Vehiculo_Catalogo" method="post">
                        <div class="row">
                            <div class="col-md-6">

                                    <div>
                                    <label for="txt_Id_Vehiculo">ID del Vehículo: </label><input name="id_vehiculo" type="text" class="form-control" id="txt_Id_Vehiculo" placeholder="Ingrese el ID del Vehículo..." required=""/>
                                    </div>
                                    
                                    <div>
                                    <label for="cbx_Id_Modelo">ID Modelo: </label><select id="cbx_Id_Modelo" >
                                        <option value="categories" selected="selected">Seleccione el Modelo...</option>
                                    </select>
                                    </div>

                                    <div>
                                    <label for="txt_Matricula">Matrícula: </label><input name="txt_Matricula" type="text" class="form-control" id="txt_Matricula" placeholder="Ingrese la Matrícula..." required=""/>
                                    </div>

                                    <div>
                                    <label for="txt_Año">Año: </label><input name="txt_Año" type="text" class="form-control" id="txt_Año" placeholder="Ingrese el Año..." required=""/>
                                    </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
