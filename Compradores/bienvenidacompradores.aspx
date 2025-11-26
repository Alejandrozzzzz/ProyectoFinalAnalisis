<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bienvenidacompradores.aspx.cs" Inherits="ProyectoFinalAnalisis.Compradores.bienvenidacompradores" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Bienvenido</title>
    <style>
        :root {
            --bg: #0b0b0d;
            --panel: #151517;
            --text: #eaeaea;
            --accent: #d4af37;
            --shadow: 0 6px 24px rgba(0,0,0,0.5);
        }

        body {
            background: var(--bg);
            color: var(--text);
            font-family: 'Segoe UI', Roboto, Arial, sans-serif;
            margin: 0;
            padding: 50px 60px;
        }

        h1 {
            font-size: 32px;
            margin-bottom: 6px;
        }

        p {
            color: #999;
            margin-bottom: 30px;
        }

        .card {
            background: var(--panel);
            border-radius: 14px;
            padding: 40px;
            text-align: center;
            box-shadow: var(--shadow);
            border: 1px solid rgba(255,255,255,0.05);
        }

        .card span {
            display: block;
            font-size: 22px;
            margin-top: 10px;
            color: #bbb;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Bienvenido, Empleado</h1>
        <p>A continuación, se muestran sus últimas 5 requisiciones pendientes</p>

        <div class="card">
            <asp:Label ID="LabelPendientes" runat="server" Text="No hay requisiciones pendientes" />
        </div>
    </form>
</body>
</html>
