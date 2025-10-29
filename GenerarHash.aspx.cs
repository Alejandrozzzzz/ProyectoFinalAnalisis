using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFinalAnalisis
{
    public partial class GenerarHash : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGenerar_Click(object sender, EventArgs e)
        {
            string pass = txtPass.Text.Trim();
            string hash = BCrypt.Net.BCrypt.HashPassword(pass);
            lblHash.Text = hash;
        }
    }
}