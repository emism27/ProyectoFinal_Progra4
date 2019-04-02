<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/msr_Navegacion_PL.Master" AutoEventWireup="true" CodeBehind="wfrm_Rating_Mantenimiento_PL.aspx.cs" Inherits="PL.Paginas.wfrm_Rating_Mantenimiento_PL" %>
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
                            <button type="submit" id="btn_Atras" class="button" onclick="location.href='wfrm_Rating_Catalogo_PL.aspx';" style='background: url(../Recursos/Exit.png);'></button>
                        </div>
                    </div>
                    <form id="Vehiculo_Catalogo" method="post">
                        <div class="row">
                            <div class="col-md-6">

                                    <div>
                                    <label for="txt_Id_Rating">ID del Rating: </label><input name="txt_Id_Rating" type="text" class="form-control" id="txt_Id_Rating" placeholder="Ingrese el ID del Rating..." required=""/>
                                    </div>

                                    <div>
                                    <label for="cbx_Id_Conductor">ID Conductor: </label><select id="cbx_Id_Conductor" >
                                        <option value="categories" selected="selected">Seleccione el ID del Conductor...</option>
                                    </select>
                                    </div>

                                    <div>
                                    <label for="txt_Descripcion_Rating">Rating: </label><input name="txt_Descripcion_Rating" type="text" class="form-control" id="txt_Descripcion_Rating" placeholder="Ingrese el Rating..." required=""/>
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
