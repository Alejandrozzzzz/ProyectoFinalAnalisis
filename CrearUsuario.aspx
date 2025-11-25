<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearUsuario.aspx.cs" Inherits="Administrador.CrearUsuario" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Crear Usuario</title>
  <style>
    body {
      background-color: #121212;
      color: #e0e0e0;
      font-family: 'Inter', sans-serif;
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 2rem;
    }
    h1 {
      margin-bottom: 1.5rem;
    }
    .top-buttons {
      width: 100%;
      max-width: 500px;
      display: flex;
      justify-content: flex-start;
      margin-bottom: 1rem;
    }
    .btn {
      padding: 0.6rem 1.2rem;
      background-color: #3a3a3a;
      border: none;
      color: white;
      border-radius: 8px;
      cursor: pointer;
      transition: background-color 0.2s;
      text-decoration: none;
    }
    .btn:hover {
      background-color: #555;
    }
    form {
      background-color: #1f1f1f;
      padding: 2rem;
      border-radius: 12px;
      width: 100%;
      max-width: 500px;
      display: flex;
      flex-direction: column;
      gap: 1rem;
    }
    label {
      font-size: 0.95rem;
    }
    input, select {
      padding: 0.5rem;
      border-radius: 8px;
      border: 1px solid #444;
      background-color: #2a2a2a;
      color: white;
    }
  </style>
</head>
<body>
  <div class="top-buttons">
    <a href="Administrador.aspx" class="btn"> Volver </a>
  </div>

  <h1>Crear Usuario</h1>

  <form action="CrearUsuario.aspx" method="post">
    <label for="id">ID</label>
    <input type="text" name="id" id="id" required>

    <label for="nombre">Nombre</label>
    <input type="text" name="nombre" id="nombre" required>

    <label for="apellidos">Apellidos</label>
    <input type="text" name="apellidos" id="apellidos" required>

    <label for="correo">Correo</label>
    <input type="email" name="correo" id="correo" required>

    <label for="rol">Rol</label>
    <select name="rol" id="rol">
      <option value="Administrador">Administrador</option>
      <option value="Comprador">Comprador</option>
      <option value="Vendedor">Vendedor</option>
    </select>

    <label for="estado">Estado</label>
    <select name="estado" id="estado">
      <option value="Activo">Activo</option>
      <option value="Inactivo">Inactivo</option>
    </select>

    <button type="submit" class="btn">Guardar</button>
  </form>
</body>
</html>
