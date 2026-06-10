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
            string idSession = Session["usuario"].ToString();

            if(String.IsNullOrEmpty(idSession))
                Response.Redirect("Login.aspx");
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
                    }
                }
                reader.Close();
                conn.Close();
            }

        }

        protected void btnGuardarEmpleado_Click(object sender, EventArgs e)
        {
            string Nombre = txtNombre.Text;
            string Apellido = txtApellido.Text;
            string DNI = txtDNI.Text;
            string Pass = txtPassword.Text;

            SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
            builder.DataSource = @"DESKTOP-3BFJO7A\SQLEXPRESS";
            builder.InitialCatalog = "PP2026";
            builder.IntegratedSecurity = true;
            builder.PersistSecurityInfo = true;

            using (SqlConnection conn = new SqlConnection(builder.ConnectionString))
            {
                string script = string.Format("INSERT INTO EMPLEADOS (Nombre, Apellido, DNI, Password) VALUES('{0}','{1}','{2}','{3}')",
                    Nombre, Apellido, DNI, Pass);
    
                conn.Open();

                SqlCommand command = new SqlCommand(script, conn);
               
                int filasAfectas = command.ExecuteNonQuery();

                if (filasAfectas > 0)
                    lblMensaje.Text = "Empleado registrado";
                else
                    lblMensaje.Text = "No se pudo registrar";
                
                conn.Close();
            }
        }
    }
}