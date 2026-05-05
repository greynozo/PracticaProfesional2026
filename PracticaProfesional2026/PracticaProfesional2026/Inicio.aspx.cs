using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticaProfesional2026
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string Nombre = txtNombre.Text;
            string Apellido = txtApellido.Text;

            if (Nombre == "" || Apellido == "")
                lblMensaje.Text = "Debe ingresar Nombre y Apellido";
            else
                lblMensaje.Text = "Bienvenido al ISFDyT N° 46: " + Nombre + " " + Apellido;
        }
    }
}