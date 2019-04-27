<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrm_Registro_Cuenta_Seguridad.aspx.cs" Inherits="PL.Paginas.Seguridad.wfrm_Registro_Cuenta_Seguridad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'/>
    <link href='https://fonts.googleapis.com/css?family=Sofia' rel='stylesheet' type='text/css'/>

    <link href="../../Styles/CSS/Registro_Cuenta.css" rel="stylesheet" />

</head>
<body>
    <form runat="server">

    <div class='login'>
        <h2>Sign Up</h2>

        <asp:TextBox ID="txt_ID_Cuenta" runat="server" CssClass="formulario" placeholder="ID Cuenta"></asp:TextBox>
        <asp:TextBox ID="txt_Nombre" runat="server" CssClass="formulario" placeholder="Nombre"></asp:TextBox>
        <asp:TextBox ID="txt_Apellido1" runat="server" CssClass="formulario" placeholder="Apellido 1"></asp:TextBox>
        <asp:TextBox ID="txt_Apellido2" runat="server" CssClass="formulario" placeholder="Apellido 2"></asp:TextBox>
        <asp:TextBox ID="txt_Correo" runat="server" CssClass="formulario" placeholder="Correo"></asp:TextBox>
        <asp:TextBox ID="txt_Telefono" runat="server" CssClass="formulario" placeholder="Telefono"></asp:TextBox>
        <p>Pregunta de Seguridad</p>
        <asp:DropDownList ID="drp_Pregunta" runat="server" CssClass="formulario" ></asp:DropDownList>
        <asp:TextBox ID="txt_Respuesta" runat="server" CssClass="formulario" placeholder="Respuesta de Seguridad"></asp:TextBox>

        <asp:Button ID="btn_Guardar" runat="server" Text="Sign Up" CssClass-="animated"/>
        <a class='forgot' href='wfrm_Login_Seguridad.aspx'>¿Ya tengo una cuenta?</a>
    </div>

    </form>
</body>
</html>
