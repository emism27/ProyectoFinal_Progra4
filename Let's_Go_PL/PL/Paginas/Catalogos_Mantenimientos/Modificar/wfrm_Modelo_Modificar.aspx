﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/Otros/msr_MasterPage_Otros.Master" AutoEventWireup="true" CodeBehind="wfrm_Modelo_Modificar.aspx.cs" Inherits="PL.Paginas.Catalogos_Mantenimientos.Modificar.wfrm_Modelo_Modificar" %>
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
                            <button type="submit" id="btn_Atras" class="button" onclick="location.href='../Listar/wfrm_Modelo_Listar.aspx';" style='background: url(../../../Recursos/Exit.png);'></button>
                        </div>

                    </div>
                    <form id="Vehiculo_Catalogo" method="post">
                        <div class="row">
                            <div class="col-md-6">

                                    <div>
                                    <label for="txt_Id_Estado">ID Modelo: </label><input name="txt_Id_Estado" type="text" class="form-control" id="txt_Id_Estado" placeholder="Ingrese el ID del Estado..." required=""/>
                                    </div>

                                    <div>
                                    <label for="txt_Modelo">Modelo: </label><input name="txt_Modelo" type="text" class="form-control" id="txt_Modelo" placeholder="Ingrese del Modelo..." required=""/>
                                    </div>

                                    <div>
                                    <label for="cbx_Id_Marca">ID Marca: </label><select id="cbx_Id_Marca" >
                                        <option value="categories" selected="selected">Seleccione el ID de la Marca...</option>
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