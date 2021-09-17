using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login_InfoToolsSV
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuarioLogeado"] != null)
            {
                string usuariologeado = Session["usuarioLogeado"].ToString();
                lblBienvenida.Text = "Bienvenid@ al Sistema de BL -->" + usuariologeado;
            }
            else
            {
                Response.Redirect("Login_InfoToolsSV.aspx");
            }
        }

        protected void BtnCerrar_Click(object sender, EventArgs e)
        {
            Session.Remove("usuarioLogeado");
            Response.Redirect("Login_InfoToolsSV.aspx");
        }
    }
}