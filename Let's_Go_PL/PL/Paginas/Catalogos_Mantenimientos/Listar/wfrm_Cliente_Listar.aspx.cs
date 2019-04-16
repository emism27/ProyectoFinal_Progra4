using System;
using DAL_LetsGO.Catalogos_Mantenimientos;   // conexion al dal 
using BLL_LetsGO.Catalogos_Mantenimientos;   // conexion al bll

namespace PL.Paginas.Catalogos_Mantenimientos.Listar
{
    public partial class wfrm_Cliente_Listar : System.Web.UI.Page
    {

        //
        protected void Page_Load(object sender, EventArgs e)

        {
            CargarDatos();

        }

        /// <summary>
        /// 
        ///  en el codigo html  el form tiene que llevar el runnat server  y el input filtro tambien el runnat
        ///  
        /// <form id="Vehiculo_Catalogo" method="post" runat="server"   >
        //    <div class="row">
        //        <div class="col-md-6">

        //            <div>
        //                <asp:GridView ID = "GV_Cliente_listar" runat="server"></asp:GridView>
        //            </div>
        //        </div>
        //    </div>
        //</form>
        /// 
        /// </summary>
        // objetos creado BLL Y DAL de la tabla
        Cls_TBL_CLIENTE_BLL Obj_CLIENTE_BLL = new Cls_TBL_CLIENTE_BLL();
        Cls_TBL_CLIENTE_DAL Obj_CLIENTE_DAL = new Cls_TBL_CLIENTE_DAL();

        public void CargarDatos()  // metodo para listar los datos
        {
            if (txt_Filtro.Value == string.Empty)
            {
                // el objeto BLLObj_CLIENTE_BLL llama al metodo de listar que esta en el bll haciendo referencia al objeto DAL de la tabla
                Obj_CLIENTE_BLL.Listar_Cliente(ref Obj_CLIENTE_DAL);

                // VACIA EL GRID VIEW
                GV_Cliente_listar.DataSource = null;

                // LLENA EL GRIDVIEW UTILIZANDO LA VARIABLE CREADA OBJ_DT que esta en el DAL de la tabla
                //     public DataTable Obj_DT = new DataTable();
                GV_Cliente_listar.DataSource = Obj_CLIENTE_DAL.Obj_DT;
                GV_Cliente_listar.DataBind();
            }
            else
            {
            }
        }

    }
}

