using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL_LetsGO.Catalogos_Mantenimientos;   // conexion al dal 
using BLL_LetsGO.Catalogos_Mantenimientos;   // conexion al bll

namespace PL.Paginas.Catalogos_Mantenimientos.Listar
{
    public partial class wfrm_Conductor_Listar : System.Web.UI.Page
    {
        Cls_TBL_CLIENTE_BLL Obj_CLIENTE_BLL = new Cls_TBL_CLIENTE_BLL();
        Cls_TBL_CLIENTE_DAL Obj_CLIENTE_DAL = new Cls_TBL_CLIENTE_DAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        public void CargarDatos()
        {
            if ()
            {

            }

        }
    }
}