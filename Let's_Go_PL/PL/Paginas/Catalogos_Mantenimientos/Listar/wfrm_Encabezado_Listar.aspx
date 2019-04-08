<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/Otros/msr_MasterPage_Otros.Master" AutoEventWireup="true" CodeBehind="wfrm_Encabezado_Listar.aspx.cs" Inherits="PL.Paginas.Catalogos_Mantenimientos.Listar.wfrm_Encabezado_Listar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="forms">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-heading">
                        <div>
                            <select id="cbx_Filtro" >
                                <option value="categories" selected="selected">Filtrar por...</option>
                            </select>
                            <input name="filtro" type="text" class="form-control" id="txt_Filtro" placeholder="Palabra clave..."/>
                            <input type="image" name="btn_Buscar" value="Buscar" id="btn_Buscar" src="../../../Recursos/Search.png"/>
                        </div>
                        <div>
                            <button type="submit" id="btn_Agregar" class="button" onclick="location.href='../Modificar/wfrm_Encabezado_Modificar.aspx';" style='background: url(../../../Recursos/Add.png);'></button>
                            <button type="submit" id="btn_Modificar" class="button" onclick="location.href='../Modificar/wfrm_Encabezado_Modificar.aspx';" style='background: url(../../../Recursos/Edit.png);'></button>
                            <button type="submit" id="btn_Eliminar" class="button" style='background: url(../../../Recursos/Delete.png);'></button>                      
                        </div>

                    </div>
                    <form id="Vehiculo_Catalogo" method="post">
                        <div class="row">
                            <div class="col-md-6">

                                <div>

                                    <p>AQUI VA EL DATA GRIDVIEW</p>

                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
