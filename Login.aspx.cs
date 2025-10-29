using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFinalAnalisis
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string correo = txtCorreo.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (string.IsNullOrEmpty(correo) || string.IsNullOrEmpty(password))
            {
                lblMensaje.Text = "Por favor ingrese correo y contraseña.";
                return;
            }

            try
            {
                using (SqlConnection conn = ConexionBD.ObtenerConexion())
                {
                    conn.Open();

                    string query = @"
                        SELECT U.Estado, C.HashPassword, R.Nombre AS Rol
                        FROM Usuario U
                        INNER JOIN Credencial C ON U.IdUsuario = C.IdUsuario
                        INNER JOIN UsuarioRol UR ON U.IdUsuario = UR.IdUsuario
                        INNER JOIN Rol R ON UR.IdRol = R.IdRol
                        WHERE U.Correo = @correo";

                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@correo", correo);

                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        string estado = dr["Estado"].ToString();
                        string hash = dr["HashPassword"].ToString();
                        string rol = dr["Rol"].ToString();

                        if (estado != "ACTIVO")
                        {
                            lblMensaje.Text = "Cuenta inactiva o pendiente de activación.";
                            return;
                        }

                        // Verificar contraseña con BCrypt
                        bool ok = BCrypt.Net.BCrypt.Verify(password, hash);

                        if (ok)
                        {
                            Session["Correo"] = correo;
                            Session["Rol"] = rol;

                            // Redirigir según rol
                            switch (rol)
                            {
                                case "ADMIN": Response.Redirect("Admin.aspx"); break;
                                case "COMPRADOR": Response.Redirect("Comprador.aspx"); break;
                                case "APROBADOR_JEFE": Response.Redirect("Jefe.aspx"); break;
                                case "APROBADOR_FINANCIERO": Response.Redirect("Financiero.aspx"); break;
                            }
                        }
                        else
                        {
                            lblMensaje.Text = "Contraseña incorrecta.";
                        }
                    }
                    else
                    {
                        lblMensaje.Text = "El correo no existe.";
                    }
                }
            }
            catch (Exception ex)
            {
                lblMensaje.Text = "Error al conectar: " + ex.Message;
            }
        }
    }
}