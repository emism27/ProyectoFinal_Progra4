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
    public partial class wfrm_Empresa_Listar : System.Web.UI.Page
    {
        Cls_TBL_EMPRESA_BLL Obj_EMPRESA_BLL = new Cls_TBL_EMPRESA_BLL();
        Cls_TBL_EMPRESA_DAL Obj_EMPRESA_DAL = new Cls_TBL_EMPRESA_DAL();
        public void CargarDatos()  // metodo para listar los datos
        {
            if (txt_Filtro.Value == string.Empty)
            {
                // el objeto BLLObj_CLIENTE_BLL llama al metodo de listar que esta en el bll haciendo referencia al objeto DAL de la tabla
                Obj_EMPRESA_BLL.Listar_Empresa(ref Obj_EMPRESA_DAL);

                // VACIA EL GRID VIEW
                GV_Empresa_listar.DataSource = null;

                // LLENA EL GRIDVIEW UTILIZANDO LA VARIABLE CREADA OBJ_DT que esta en el DAL de la tabla
                //     public DataTable Obj_DT = new DataTable();
                GV_Empresa_listar.DataSource = Obj_EMPRESA_DAL.Obj_DT;
                GV_Empresa_listar.DataBind();
            }
            else
            {
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            CargarDatos();
        }

        protected void GV_Empresa_listar_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}