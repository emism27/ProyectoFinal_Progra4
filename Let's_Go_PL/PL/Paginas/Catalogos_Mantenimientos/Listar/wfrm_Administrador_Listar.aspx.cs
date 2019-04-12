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
    public partial class wfrm_Administrador_Listar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarDatos();  // metodo para listar 
        }

        /// <summary>
        /// 
        ///  en el codigo html  el form tiene que llevar el runnat server  y el input filtro tambien el runnat
        ///  
        /// <form id="Vehiculo_Catalogo" method="post" runat="server"   >
        //    <div class="row">
        //        <div class="col-md-6">

        //            <div>
        //                <asp:GridView ID = "dgvAministrador" runat="server"></asp:GridView>
        //            </div>
        //        </div>
        //    </div>
        //</form>
        /// 
        /// </summary>
        // objetos creado BLL Y DAL de la tabla
        Cls_TBL_ADMINISTRADOR_BLL Obj_ADMINISTRADOR_BLL = new Cls_TBL_ADMINISTRADOR_BLL();
        Cls_TBL_ADMINISTRADOR_DAL Obj_ADMINISTRADOR_DAL = new Cls_TBL_ADMINISTRADOR_DAL();

        public void CargarDatos()  // metodo para listar los datos
        {
            if (txt_Filtro.Value == string.Empty)
            {
                // el objeto BLL Administrador llama al metodo de listar que esta en el bll haciendo referencia al objeto DAL de la tabla
                Obj_ADMINISTRADOR_BLL.Listar_Adminitrador(ref Obj_ADMINISTRADOR_DAL);

                // VACIA EL GRID VIEW
                dgvAministrador.DataSource = null;

                // LLENA EL GRIDVIEW UTILIZANDO LA VARIABLE CREADA OBJ_DT que esta en el DAL de la tabla
                //     public DataTable Obj_DT = new DataTable();
                dgvAministrador.DataSource = Obj_ADMINISTRADOR_DAL.Obj_DT;
                dgvAministrador.DataBind();
            }
            else
            {
            }
        }

    }



}
