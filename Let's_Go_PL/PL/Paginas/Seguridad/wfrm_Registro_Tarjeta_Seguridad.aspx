<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrm_Registro_Tarjeta_Seguridad.aspx.cs" Inherits="PL.Paginas.Seguridad.wfrm_Registro_Tarjeta_Seguridad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../Styles/CSS/Registro_Cuenta.css" rel="stylesheet" />
</head>
<body>
    <form runat="server">

    <div class='login'>

        <h2>Sign Up</h2>

        <asp:TextBox ID="txt_ID_Tarjeta" runat="server" CssClass="formulario" placeholder="ID Tarjeta"></asp:TextBox>
        <asp:TextBox ID="txt_Numero_Cuenta" runat="server" CssClass="formulario" placeholder="Numero de Cuenta"></asp:TextBox>
        <asp:TextBox ID="txt_Fecha" runat="server" CssClass="formulario" placeholder="Fecha de Vencimiento"></asp:TextBox>
        <asp:TextBox ID="txt_CVV" runat="server" CssClass="formulario" placeholder="CVV"></asp:TextBox>
        <p>ID Banco</p><asp:DropDownList ID="drp_Pregunta" runat="server" CssClass="formulario" ></asp:DropDownList>
        <p>ID Tipo de Tarjeta</p><asp:DropDownList ID="drp_Id_Tipo_Tarjeta" runat="server" CssClass="formulario" ></asp:DropDownList>

        <asp:Button ID="btn_Guardar" runat="server" Text="Siguiente" CssClass-="animated" OnClick="btn_Guardar_Click"/>
        <a class='forgot' href='wfrm_Login_Seguridad.aspx'>¿Ya tengo una cuenta?</a>
    </div>

    </form>
</body>
</html>
