using System;
using DAL_LetsGO.Catalogos_Mantenimientos;   // conexion al dal 
using BLL_LetsGO.Catalogos_Mantenimientos;   // conexion al bll

namespace PL.Paginas.Catalogos_Mantenimientos.Listar
{
    public partial class wfrm_Conductor_Listar : System.Web.UI.Page
    {
        Cls_TBL_CONDUCTOR_BLL Obj_CONDUCTOR_BLL = new Cls_TBL_CONDUCTOR_BLL();
        Cls_TBL_CONDUCTOR_DAL Obj_CONDUCTOR_DAL = new Cls_TBL_CONDUCTOR_DAL();

        protected void Page_Load(object sender, EventArgs e)
        {

            CargarDatos();

        }

        public void CargarDatos()
        {
            if (txt_Filtro.Value == string.Empty)
            {

                Obj_CONDUCTOR_BLL.Listar_Conductor(ref Obj_CONDUCTOR_DAL);
                GV_Conductor_listar.DataSource = null;
                GV_Conductor_listar.DataSource = Obj_CONDUCTOR_DAL.Obj_DT;
                GV_Conductor_listar.DataBind();
            }

        }
    }
}