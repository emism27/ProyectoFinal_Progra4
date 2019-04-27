using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PL.Paginas.Seguridad
{
    public partial class wfrm_Registro_Tarjeta_Seguridad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Guardar_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Seguridad/wfrm_Registro_Usuario.aspx");
        }
    }
}