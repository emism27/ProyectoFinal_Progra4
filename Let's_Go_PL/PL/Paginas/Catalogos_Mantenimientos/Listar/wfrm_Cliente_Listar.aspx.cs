using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL_LetsGO.Catalogos_Mantenimientos;

namespace PL.Paginas.Catalogos_Mantenimientos.Listar
{
    public partial class wfrm_Cliente_Listar : System.Web.UI.Page
    {

        //
        protected void Page_Load(object sender, EventArgs e)

        {
            Cls_TBL_CLIENTE_BLL Obj_BLL = new Cls_TBL_CLIENTE_BLL();
            GV_Cliente_listar.AllowSorting = false;
            GV_Cliente_listar.DataBind();
            GV_Cliente_listar.DataSource = Obj_BLL.Listar();


        }
    }
}