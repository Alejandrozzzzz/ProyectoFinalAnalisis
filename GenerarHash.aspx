<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenerarHash.aspx.cs" Inherits="ProyectoFinalAnalisis.GenerarHash" %>
<!DOCTYPE html>
<html>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="txtPass" runat="server" Text="1234" />
        <asp:Button ID="btnGenerar" runat="server" Text="Generar Hash" OnClick="btnGenerar_Click" />
        <br />
        <asp:Label ID="lblHash" runat="server" />
    </form>
</body>
</html>