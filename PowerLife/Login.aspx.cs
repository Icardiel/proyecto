using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace PowerLife
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Ingresar_Click(object sender, EventArgs e)
        {
            string usuario = txtUsuario.Text;
            string contrasena = txtPassword.Text;

            if(txtUsuario.Text == "Usuario" && txtPassword.Text == "123")
            {
                Response.Redirect("~/Pages/Inicio.aspx");
            }
            else
            {
                Response.Write("<script> alert(" + " Datos Incorrectos " + ")</script>");
                Response.Redirect("~/Login.aspx");
            }
        }
    }
}