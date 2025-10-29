<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProyectoFinalAnalisis.Login" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Login - Sistema de Requisiciones</title>
    <style>
        body { font-family: Arial; background-color: #222; color: white; display: flex; justify-content: center; align-items: center; height: 100vh; }
        .login-box { background-color: #333; padding: 30px; border-radius: 10px; width: 300px; }
        input { width: 100%; padding: 8px; margin-top: 8px; border-radius: 5px; border: none; }
        .btn { background-color: #0078d4; color: white; padding: 10px; border: none; width: 100%; border-radius: 5px; margin-top: 10px; cursor: pointer; }
        .btn:hover { background-color: #005fa3; }
        .error { color: #ff6666; margin-top: 10px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-box">
            <h2>Inicio de Sesión</h2>
            <asp:TextBox ID="txtCorreo" runat="server" Placeholder="Correo electrónico"></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" Placeholder="Contraseña" TextMode="Password"></asp:TextBox>
            <asp:Button ID="btnLogin" runat="server" Text="Ingresar" CssClass="btn" OnClick="btnLogin_Click" />
            <asp:Label ID="lblMensaje" runat="server" CssClass="error"></asp:Label>
        </div>
    </form>
</body>
</html>