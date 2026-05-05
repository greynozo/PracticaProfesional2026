using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticaProfesional2026
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                lblMensaje.Text = "Inicializar la pagina";
   
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            //COMENTARIO LINEA

            /*COMENTARIO 
             CON APERTURA 
             Y 
             CIERRE*/

            int Variable = 0;
            string VariableString = "HOLA MUNDO";
            string VariableCondicion = (Variable == 0) ? "ES CERO" : "NO ES CERO";

            //if (Variable == 0)
            //    VariableCondicion = "ES CERO";
            //else
            //    VariableCondicion = "NO ES CERO";

            //lblMensaje.Text = VariableString;
            //lblMensaje.Text = "HOLA MUNDO";



            //PARSE 
            int ValorParse = int.Parse("1998");

            //TRYPARSE
            int numero;
            int.TryParse("0", out numero);
            int ValorTryParse = numero;

            if (numero == 0)
                lblMensaje.Text = "AÑO ERRONEO";

            //CONCATENAR
            string CadenaConcatenar = string.Empty;

            CadenaConcatenar = "TEXTO: " + VariableString;

            lblConcatenar.Text = CadenaConcatenar;

            string Nombre = "Gonzalo";
            string Instituto = "ISFDyT 46";
            CadenaConcatenar = string.Format("Bienvenido {0} al instituto ", Nombre, Instituto);
            lblConcatenar.Text = CadenaConcatenar;

            //CARACTER ESPECIAL

            string VariableDirectorio = @"C:/Usuario/Documentos";
        }
    }
}