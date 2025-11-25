<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administrador.aspx.cs" Inherits="Administrador.WebForm1" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Panel Administrador</title>
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
      font-family: 'Inter', sans-serif;
    }
    body {
      background-color: 
#121212;
      color: 
#e0e0e0;
      display: flex;
      min-height: 100vh;
    }
    /* Menú lateral */
    .sidebar {
      width: 240px;
      background-color: 
#1f1f1f;
      padding: 2rem 1rem;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
    }
    .sidebar h2 {
      font-size: 1.2rem;
      margin-bottom: 2rem;
    }
    .nav-section {
      display: flex;
      flex-direction: column;
      gap: 1rem;
    }
    .nav-section a {
      color: 
#e0e0e0;
      text-decoration: none;
      font-size: 1rem;
      padding: 0.5rem;
      border-radius: 8px;
    }
    .nav-section a:hover {
      background-color: 
#2c2c2c;
    }
    .logout {
      font-size: 0.9rem;
      color: #aaa;
      cursor: pointer;
    }
    /* Panel principal */
    .main {
      flex: 1;
      padding: 2rem;
    }
    .main h1 {
      font-size: 2rem;
      margin-bottom: 0.5rem;
    }
    .main p {
      margin-bottom: 2rem;
      color: #bbb;
    }
    .table-container {
      background-color: 
#1f1f1f;
      border-radius: 12px;
      padding: 1rem;
      overflow-x: auto;
    }
    table {
      width: 100%;
      border-collapse: collapse;
      color: 
#e0e0e0;
      font-size: 0.95rem;
    }
    th, td {
      padding: 0.8rem;
      text-align: left;
      border-bottom: 1px solid #333;
    }
    th {
      background-color: 
#2a2a2a;
    }
    .btn {
      padding: 0.5rem 1rem;
      background-color: 
#3a3a3a;
      border: none;
      color: white;
      border-radius: 8px;
      cursor: pointer;
      transition: background-color 0.2s;
    }
    .btn:hover {
      background-color: #555;
    }
    .top-bar {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 1rem;
    }
  </style>
</head>
<body>
  <!-- Sidebar -->
  <aside class="sidebar">
    <div>
      <h2>Administrador</h2>
      <div class="nav-section">
        <a href="#">Principal</a>
      </div>
    </div>
    <div class="logout">Logout</div>
  </aside>
  <!-- Main Content -->
  <main class="main">
    <div class="top-bar">
      <div>
        <h1>Bienvenido, Administrador</h1>
        <p>A continuación, podrá crear y actualizar usuarios</p>
      </div>
      <a href="CrearUsuario.aspx" class="btn"> Crear </a>
    </div>
    <div class="table-container">
      <table>
        <thead>
          <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Apellidos</th>
            <th>Correo</th>
            <th>Rol</th>
            <th>Estado</th>
            <th>Acciones</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>1</td>
            <td>Luis</td>
            <td>Villatoro</td>
            <td>luis@gmail.com</td>
            <td>Comprador</td>
            <td>Activo</td>
            <td><button class="btn">Actualizar</button></td>
          </tr>
          <!-- Puedes añadir más filas aquí -->
        </tbody>
      </table>
    </div>
  </main>
</body>
</html>