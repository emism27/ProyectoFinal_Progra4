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
    public partial class wfrm_Solicitud_Viaje_Listar : System.Web.UI.Page
    {
        Cls_TBL_SOLICITUD_VIAJE_BLL Obj_SOLICITUD_VIAJE_BLL = new Cls_TBL_SOLICITUD_VIAJE_BLL();
        Cls_TBL_SOLICITUD_VIAJE_DAL Obj_SOLICITUD_VIAJE_DAL = new Cls_TBL_SOLICITUD_VIAJE_DAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            CargarDatos();  // metodo para listar 
        }

        public void CargarDatos()  // metodo para listar los datos
        {
            if (txt_Palabra.Text == string.Empty)
            {
                // el objeto BLL tipo tarjeta llama al metodo de listar que esta en el bll haciendo referencia al objeto DAL de la tabla
                Obj_SOLICITUD_VIAJE_BLL.Listar_SOLICITUD_VIAJE(ref Obj_SOLICITUD_VIAJE_DAL);

                // VACIA EL GRID VIEW
                dgvDatos.DataSource = null;

                // LLENA EL GRIDVIEW UTILIZANDO LA VARIABLE CREADA OBJ_DT que esta en el DAL de la tabla
                //     public DataTable Obj_DT = new DataTable();
                dgvDatos.DataSource = Obj_SOLICITUD_VIAJE_DAL.Obj_DT;
                dgvDatos.DataBind();
            }
            else
            {
            }
        }


        protected void btn_Agregar_Click(object sender, ImageClickEventArgs e)
        {
            Cls_TBL_SOLICITUD_VIAJE_DAL Obj_SOLICITUD_VIAJE_DAL = new Cls_TBL_SOLICITUD_VIAJE_DAL();

            Obj_SOLICITUD_VIAJE_DAL.CAx = 'I';

            Response.Redirect("../Catalogos_Mantenimientos/wfrm_Solicitud_Viaje_Modificar.aspx?axi=" + Obj_SOLICITUD_VIAJE_DAL.CAx);

        }

        protected void btn_Modificar_Click(object sender, ImageClickEventArgs e)
        {
            if (dgvDatos.Rows.Count > 0)
            {
                //  SE CREAN LOS OBJETOS
                Cls_TBL_SOLICITUD_VIAJE_DAL Obj_SOLICITUD_VIAJE_DAL = new Cls_TBL_SOLICITUD_VIAJE_DAL();

                // Se obtiene los valores para su modificacion
                Obj_SOLICITUD_VIAJE_DAL.SID_Solicitud_Viaje = Convert.ToInt16(dgvDatos.SelectedRow.Cells[1].Text);
                Obj_SOLICITUD_VIAJE_DAL.IID_Cliente = Convert.ToInt32(dgvDatos.SelectedRow.Cells[2].Text);
                Obj_SOLICITUD_VIAJE_DAL.BID_Tipo_Vehiculo = Convert.ToByte(dgvDatos.SelectedRow.Cells[3].Text);
                Obj_SOLICITUD_VIAJE_DAL.SRuta_Inicial = dgvDatos.SelectedRow.Cells[4].Text;
                Obj_SOLICITUD_VIAJE_DAL.SRuta_Final = dgvDatos.SelectedRow.Cells[5].Text;
                Obj_SOLICITUD_VIAJE_DAL.DCantidad_Km = Convert.ToDecimal(dgvDatos.SelectedRow.Cells[6].Text);
                Obj_SOLICITUD_VIAJE_DAL.DCosto_Inicial = Convert.ToDecimal(dgvDatos.SelectedRow.Cells[7].Text);



                Obj_SOLICITUD_VIAJE_DAL.CAx = 'U';

                // se llama la pantalla de modificar y se envian los datos
                Response.Redirect("../Catalogos_Mantenimientos/wfrm_Solicitud_Viaje_Modificar.aspx?id=" + Obj_SOLICITUD_VIAJE_DAL.SID_Solicitud_Viaje + 
                                                                                        "&idCliente=" + Obj_SOLICITUD_VIAJE_DAL.IID_Cliente + 
                                                                                        "&idTipoVehiculo=" + Obj_SOLICITUD_VIAJE_DAL.BID_Tipo_Vehiculo + 
                                                                                        "&RutaI=" + Obj_SOLICITUD_VIAJE_DAL.SRuta_Inicial + 
                                                                                        "&RuraF=" + Obj_SOLICITUD_VIAJE_DAL.SRuta_Final + 
                                                                                        "&km=" + Obj_SOLICITUD_VIAJE_DAL.DCantidad_Km + 
                                                                                        "&CostoI=" + Obj_SOLICITUD_VIAJE_DAL.DCosto_Inicial + 
                                                                                        "&axi=" + Obj_SOLICITUD_VIAJE_DAL.CAx);

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
                    Obj_SOLICITUD_VIAJE_DAL.SID_Solicitud_Viaje = Convert.ToInt16(dgvDatos.SelectedRow.Cells[1].Text);
                //Obj_TIPO_TARJETA_DAL.SDescripcion = dgvTipoTarjeta.SelectedRow.Cells[2].Text;

                //  Se llama el metodo del BLL 
                Obj_SOLICITUD_VIAJE_BLL.Eliminar_SOLICITUD_VIAJE(ref Obj_SOLICITUD_VIAJE_DAL);


                if ((Obj_SOLICITUD_VIAJE_DAL.Bln_BEstado == true) &&
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