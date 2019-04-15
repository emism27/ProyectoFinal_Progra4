<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/Otros/msr_MasterPage_Otros.Master" AutoEventWireup="true" CodeBehind="wfrm_Empresa_Modificar.aspx.cs" Inherits="PL.Paginas.Catalogos_Mantenimientos.Modificar.wfrm_Empresa_Modificar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="../../../Scripts_Validaciones/js_Validacion_Empresa.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <section class="forms">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-heading">

                        <div>
                            <button type="submit" id="btn_Guardar" onclick="return ValidarEspacio()" class="button" style='background: url(../../../Recursos/Save.png);'></button>
                            <button type="reset" id="btn_Limpiar" class="button" style='background: url(../../../Recursos/Refresh.png);'></button>
                            <button type="submit" id="btn_Atras" class="button" onclick="location.href='../Listar/wfrm_Empresa_Listar.aspx';" style='background: url(../../../Recursos/Exit.png);'></button>
                        
                        </div>
                    </div>
                    <form id="Vehiculo_Catalogo" method="post">
                        <div class="row">
                            <div class="col-md-6">

                                    <div>
                                    <label for="txt_Id_Empresa">ID Empresa: </label><input name="txt_Id_Empresa" type="text" onkeypress="return ValidarNumeros(event)" class="form-control" id="txt_Id_Empresa" placeholder="Ingrese el ID de la Empresa..." required=""/>
                                    </div>

                                    <div>
                                    <label for="txt_Nombre">Nombre: </label><input name="txt_Nombre" type="text" onkeypress="return ValidarLetras(event)" class="form-control" id="txt_Nombre" placeholder="Ingrese el Nombre..." required=""/>
                                    </div>

                                    <div>
                                    <label for="txt_Direccion">Dirección: </label><input name="txt_Direccion" type="text" onkeypress="return ValidarLetras(event)" class="form-control" id="txt_Direccion" placeholder="Ingrese la Dirección..." required=""/>
                                    </div>

                                    <div>
                                    <label for="txt_Sitio_Web">Sitio Web: </label><input name="txt_Sitio_Web" type="text" onkeypress="return ValidarLetras(event)" class="form-control" id="txt_Sitio_Web" placeholder="Ingrese el Sitio Web..." required=""/>
                                    </div>

                                    <div>
                                    <label for="txt_Telefono">Número de Telefono: </label><input name="txt_Telefono" type="text" onkeypress="return ValidarNumeros(event)" class="form-control" id="txt_Telefono" placeholder="Ingrese el Número de Telefono..." required=""/>
                                    </div>

                                    <div>
                                    <label for="txt_Email">E-Mail: </label><input name="txt_Email" type="text" class="form-control" id="txt_Email" placeholder="Ingrese el E-Mail..." required=""/>
                                    </div>

                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
