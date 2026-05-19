using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


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


            SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
            builder.DataSource = @"DESKTOP-3BFJO7A\SQLEXPRESS";
            builder.InitialCatalog = "PP2026";
            builder.IntegratedSecurity = true;
            builder.PersistSecurityInfo = true;

            using (SqlConnection conn = new SqlConnection(builder.ConnectionString))
            {
                string script = "SELECT * FROM USUARIO WHERE ID = 2";

                conn.Open();

                SqlCommand command = new SqlCommand(script, conn);
                SqlDataReader reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        string usuario = reader.GetString(1);
                        //txtEditorial.Text = reader.GetString(3);
                    }
                }
                reader.Close();
                conn.Close();
            }

        }
    }
}