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
    public partial class wfrm_Tarjeta_Listar : System.Web.UI.Page
    {
        Cls_TBL_TARJETA_BLL Obj_TARJETA_BLL = new Cls_TBL_TARJETA_BLL();
        Cls_TBL_TARJETA_DAL Obj_TARJETA_DAL = new Cls_TBL_TARJETA_DAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            CargarDatos();  // metodo para listar 
        }

        public void CargarDatos()  // metodo para listar los datos
        {
            if (txt_Palabra.Text == string.Empty)
            {
                // el objeto BLL tipo tarjeta llama al metodo de listar que esta en el bll haciendo referencia al objeto DAL de la tabla
                Obj_TARJETA_BLL.Listar_Tarjeta(ref Obj_TARJETA_DAL);

                // VACIA EL GRID VIEW
                dgvDatos.DataSource = null;

                // LLENA EL GRIDVIEW UTILIZANDO LA VARIABLE CREADA OBJ_DT que esta en el DAL de la tabla
                //     public DataTable Obj_DT = new DataTable();
                dgvDatos.DataSource = Obj_TARJETA_DAL.Obj_DT;
                dgvDatos.DataBind();
            }
            else
            {
            }
        }

        protected void btn_Agregar_Click(object sender, ImageClickEventArgs e)
        {
            Cls_TBL_TARJETA_DAL Obj_TARJETA_DAL = new Cls_TBL_TARJETA_DAL();

            Obj_TARJETA_DAL.CAx = 'I';

            Response.Redirect("../Catalogos_Mantenimientos/wfrm_Tarjeta_Modificar.aspx?axi=" + Obj_TARJETA_DAL.CAx);
        }

        protected void btn_Modificar_Click(object sender, ImageClickEventArgs e)
        {
            if (dgvDatos.Rows.Count > 0)
            {
                // Se obtiene los valores para su modificacion
                Obj_TARJETA_DAL.IID_Numero_Tarjeta = Convert.ToInt64(dgvDatos.SelectedRow.Cells[1].Text);
                Obj_TARJETA_DAL.BID_Tipo_Tarjeta = Convert.ToByte(dgvDatos.SelectedRow.Cells[2].Text);
                Obj_TARJETA_DAL.BID_Banco = Convert.ToByte(dgvDatos.SelectedRow.Cells[3].Text);
                Obj_TARJETA_DAL.INumero_Cuenta = Convert.ToInt64(dgvDatos.SelectedRow.Cells[4].Text);
                Obj_TARJETA_DAL.DTFecha_Vencimiento = Convert.ToDateTime(dgvDatos.SelectedRow.Cells[5].Text);
                Obj_TARJETA_DAL.BCVV = Convert.ToByte(dgvDatos.SelectedRow.Cells[6].Text);

                Obj_TARJETA_DAL.CAx = 'U';

                // se llama la pantalla de modificar y se envian los datos
                Response.Redirect("../Catalogos_Mantenimientos/wfrm_Tarjeta_Modificar.aspx?idNumeroTarjeta=" + Obj_TARJETA_DAL.IID_Numero_Tarjeta + "&idTipoTarjeta=" + Obj_TARJETA_DAL.BID_Tipo_Tarjeta + "&idBanco=" + Obj_TARJETA_DAL.BID_Banco + "&NumeroCuenta=" + Obj_TARJETA_DAL.INumero_Cuenta + "&fechaVenc=" + Obj_TARJETA_DAL.DTFecha_Vencimiento + "&CVV=" + Obj_TARJETA_DAL.BCVV + "&axi=" + Obj_TARJETA_DAL.CAx);

                CargarDatos();
            }
            else
            {
                Response.Write("<script>alert('Debe seleccionar datos para la modificacion');</script>");
            }
        }

        protected void btn_Filtro_Click(object sender, EventArgs e)
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
                    Obj_TARJETA_DAL.IID_Numero_Tarjeta = Convert.ToInt64(dgvDatos.SelectedRow.Cells[1].Text);
                //Obj_TIPO_TARJETA_DAL.SDescripcion = dgvTipoTarjeta.SelectedRow.Cells[2].Text;


                //  Se llama el metodo del BLL 
                Obj_TARJETA_BLL.Eliminar_Tarjeta(ref Obj_TARJETA_DAL);


                if ((Obj_TARJETA_DAL.Bln_BEstado == true) &&
                    (sMsjError == string.Empty))
                {
                        Response.Write("<script>alert('Se eliminó exitosamente');</script>");
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