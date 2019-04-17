﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/Otros/msr_MasterPage_Otros.Master" AutoEventWireup="true" CodeBehind="wfrm_Conductor_Modificar.aspx.cs" Inherits="PL.Paginas.Catalogos_Mantenimientos.Modificar.wfrm_Conductor_Modificar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="../../../Scripts_Validaciones/js_Validaciones_Conductor.js"></script>

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
                            <button type="submit" id="btn_Atras" class="button" onclick="location.href='../Listar/wfrm_Conductor_Listar.aspx';" style='background: url(../../../Recursos/Exit.png);'></button>

                        </div>
                    </div>
                    <form id="Vehiculo_Catalogo" method="post">
                        <div class="row">
                            <div class="col-md-6">

                                    <div>
                                    <label for="txt_Id_Conductor">ID del Conductor: </label><input name="txt_Id_Conductor" type="text" onkeypress="return ValidarNumeros(event)" class="form-control" id="txt_Id_Conductor" placeholder="Ingrese el ID del Conductor..." required=""/>
                                    </div>
                                    
                                    <div>
                                    <label for="cbx_Id_Cuenta">ID Cuenta: </label><select id="cbx_Id_Cuenta" >
                                        <option value="categories" selected="selected">Seleccione el ID de la Cuenta...</option>
                                    </select>
                                    </div>

                                    <div>
                                    <label for="cbx_Id_Estado">ID Estado: </label><select id="cbx_Id_Estado" >
                                        <option value="categories" selected="selected">Seleccione el ID del Estado...</option>
                                    </select>
                                    </div>

                                    <div>
                                    <label for="cbx_Id_Vehiculo">ID Vehiculo: </label><select id="cbx_Id_Vehiculo" >
                                        <option value="categories" selected="selected">Seleccione el ID del Vehiculo...</option>
                                    </select>
                                    </div>

                                    <div>
                                    <label for="cbx_Id_Tarjeta">ID Tarjeta: </label><select id="cbx_Id_Tarjeta" >
                                        <option value="categories" selected="selected">Seleccione el ID de la Tarjeta...</option>
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
