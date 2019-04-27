using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL_LetsGO.Catalogos_Mantenimientos;   // conexion al dal 
using BLL_LetsGO.Catalogos_Mantenimientos;   // conexion al bll

namespace PL.Paginas.Catalogos_Mantenimientos
{
    public partial class wfrm_Cuenta_Listar : System.Web.UI.Page
    {
        Cls_TBL_CUENTA_BLL Obj_CUENTA_BLL = new Cls_TBL_CUENTA_BLL();
        Cls_TBL_CUENTA_DAL Obj_CUENTA_DAL = new Cls_TBL_CUENTA_DAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarDatos();
        }
        public void CargarDatos()  // metodo para listar los datos
        {
            if (txt_Palabra.Text == string.Empty)
            {
                // el objeto BLL tipo tarjeta llama al metodo de listar que esta en el bll haciendo referencia al objeto DAL de la tabla
                Obj_CUENTA_BLL.Listar_Cuenta(ref Obj_CUENTA_DAL);

                // VACIA EL GRID VIEW
                dgvDatos.DataSource = null;

                // LLENA EL GRIDVIEW UTILIZANDO LA VARIABLE CREADA OBJ_DT que esta en el DAL de la tabla
                //     public DataTable Obj_DT = new DataTable();
                dgvDatos.DataSource = Obj_CUENTA_DAL.Obj_DT;
                dgvDatos.DataBind();
            }
            else
            {
            }
        }

        protected void btn_Agregar_Click(object sender, ImageClickEventArgs e)
        {
            Obj_CUENTA_DAL.CAx = 'I';
            Response.Redirect("../Catalogos_Mantenimientos/wfrm_Cuenta_Modificar.aspx?axi=" + Obj_CUENTA_DAL.CAx);
        }

        protected void btn_Modificar_Click(object sender, ImageClickEventArgs e)
        {
            if (dgvDatos.Rows.Count > 0)
            {

                // Se obtiene los valores para su modificacion
                Obj_CUENTA_DAL.IID_Cuenta = Convert.ToInt32(dgvDatos.SelectedRow.Cells[1].Text);
                Obj_CUENTA_DAL.SNombre = dgvDatos.SelectedRow.Cells[2].Text;
                Obj_CUENTA_DAL.SApellido_1 = dgvDatos.SelectedRow.Cells[3].Text;
                Obj_CUENTA_DAL.SApellido_2 = dgvDatos.SelectedRow.Cells[4].Text;
                Obj_CUENTA_DAL.SEmail = dgvDatos.SelectedRow.Cells[5].Text;
                Obj_CUENTA_DAL.ITelefono = Convert.ToInt32(dgvDatos.SelectedRow.Cells[6].Text);
                Obj_CUENTA_DAL.SRespuesta_Seguridad = dgvDatos.SelectedRow.Cells[7].Text;


                Obj_CUENTA_DAL.CAx = 'U';

                // se llama la pantalla de modificar y se envian los datos
                Response.Redirect("../Catalogos_Mantenimientos/wfrm_Cuenta_Modificar.aspx?axi=" + Obj_CUENTA_DAL.CAx);
                //Response.Redirect("../Catalogos_Mantenimientos/wfrm_Tipo_Tarjeta_Modificar.aspx?id=" + Obj_TIPO_TARJETA_DAL.BID_Tipo_Tarjeta + "&descripcion=" + Obj_TIPO_TARJETA_DAL.SDescripcion + "&axi=" + Obj_TIPO_TARJETA_DAL.CAx);

                CargarDatos();
            }
            else
            {
                Response.Write("<script>alert('Debe seleccionar datos para la modificacion');</script>");
            }

        }

        protected void drd_Filtro_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void dgvDatos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btn_Eliminar_Click(object sender, ImageClickEventArgs e)
        {
            string sMsjError = string.Empty;

            /*  Si selecciono algun dato  */
            if (dgvDatos.Rows.Count > 0)
            {

                try
                {
                    // Se obtiene el valor del ID para su eliminacion
                    Obj_CUENTA_DAL.IID_Cuenta = Convert.ToInt32(dgvDatos.SelectedRow.Cells[1].Text);
                //Obj_TIPO_TARJETA_DAL.SDescripcion = dgvTipoTarjeta.SelectedRow.Cells[2].Text;

                //  Nombre del SP
                string sNombreSP = "[SCH_CUENTA].[sp_delete_TBL_CUENTA]";

                //  Se llama el metodo del BLL 
                Obj_CUENTA_BLL.Eliminar_Cuenta(ref Obj_CUENTA_DAL);


                if ((Obj_CUENTA_DAL.Bln_BEstado == true) &&
                    (sMsjError == string.Empty))
                {
                    Response.Write("<script>alert('Dato eliminado exitosamente');</script>");
                    CargarDatos();
                }
                else
                {
                }
                }
                catch (Exception ex)
                {
                    sMsjError = ex.Message.ToString();
                }
            }
            else

            {
                Response.Write("<script>alert('Debe seleccionar datos para su eliminación');</script>");
            }
        }
    }
}