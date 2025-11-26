<%@ Page Language="C#" AutoEventWireup="true" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <style>
        :root {
            --bg: #0c0c0d;
            --panel: #141415;
            --text: #e6e6e6;
            --hover: #1f1f22;
            --accent: #d4af37;
            --shadow: 0 0 10px rgba(0,0,0,0.6);
        }

        body {
            background: var(--panel);
            color: var(--text);
            font-family: 'Segoe UI', Roboto, Arial, sans-serif;
            margin: 0;
            padding: 0;
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            box-shadow: inset -1px 0 0 rgba(255,255,255,0.05);
        }

        .header {
            padding: 25px 10px;
            text-align: center;
            font-size: 20px;
            font-weight: 600;
            border-bottom: 1px solid rgba(255,255,255,0.1);
            letter-spacing: 0.5px;
        }

        .menu {
            flex-grow: 1;
            padding: 10px;
        }

        a {
            display: block;
            color: var(--text);
            text-decoration: none;
            font-size: 16px;
            padding: 12px 18px;
            border-radius: 8px;
            margin: 5px 0;
            transition: 0.2s;
        }

        a:hover {
            background: var(--hover);
            color: var(--accent);
        }

        .footer {
            text-align: center;
            padding: 15px;
            border-top: 1px solid rgba(255,255,255,0.1);
        }

        .footer a {
            color: #f66;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">Dashboard<br /><small>Comprador</small></div>

        <div class="menu">
            <a href="bienvenidacompradores.aspx" target="contenido">Main</a>
            <a href="requisiciones.aspx" target="contenido">Requisiciones</a>
        </div>

        <div class="footer">
            <a href="../Login.aspx" target="_top">Logout</a>
        </div>
    </form>
</body>
</html>
