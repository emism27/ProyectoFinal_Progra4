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
    public partial class wfrm_Pregunta_Seguridad_Listar : System.Web.UI.Page
    {
        Cls_TBL_PREGUNTAS_SEGURIDAD_BLL Obj_PREGUNTA_BLL = new Cls_TBL_PREGUNTAS_SEGURIDAD_BLL();
        Cls_TBL_PREGUNTAS_DAL Obj_PREGUNTA_DAL = new Cls_TBL_PREGUNTAS_DAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void CargarDatos()  // metodo para listar los datos
        {
            if (txt_Palabra.Text == string.Empty)
            {
                // el objeto BLL tipo tarjeta llama al metodo de listar que esta en el bll haciendo referencia al objeto DAL de la tabla
                Obj_PREGUNTA_BLL.Listar_Preguntas(ref Obj_PREGUNTA_DAL);

                // VACIA EL GRID VIEW
                dgvDatos.DataSource = null;

                // LLENA EL GRIDVIEW UTILIZANDO LA VARIABLE CREADA OBJ_DT que esta en el DAL de la tabla
                //     public DataTable Obj_DT = new DataTable();
                dgvDatos.DataSource = Obj_PREGUNTA_DAL.Obj_DT;
                dgvDatos.DataBind();
            }
            else
            {
            }
        }

        protected void btn_Agregar_Click(object sender, ImageClickEventArgs e)
        {
            Obj_PREGUNTA_DAL.CAx = 'I';
            Response.Redirect("../Catalogos_Mantenimientos/wfrm_Pregunta_Seguridad_Modificar.aspx");
        }

        protected void btn_Modificar_Click(object sender, ImageClickEventArgs e)
        {
            if (dgvDatos.Rows.Count > 0)
            {
                //  SE CREAN LOS OBJETOS

                // Se obtiene los valores para su modificacion
                Obj_PREGUNTA_DAL.BID_Pregunta_Seguridad = Convert.ToByte(dgvDatos.SelectedRow.Cells[1].Text);
                Obj_PREGUNTA_DAL.SDetalle_Preguntas = dgvDatos.SelectedRow.Cells[2].Text;


                Obj_PREGUNTA_DAL.CAx = 'U';

                // se llama la pantalla de modificar y se envian los datos
                Response.Redirect("../Catalogos_Mantenimientos/wfrm_Pregunta_Seguridad_Modificar.aspx");
                //Response.Redirect("../Catalogos_Mantenimientos/wfrm_Tipo_Tarjeta_Modificar.aspx?id=" + Obj_TIPO_TARJETA_DAL.BID_Tipo_Tarjeta + "&descripcion=" + Obj_TIPO_TARJETA_DAL.SDescripcion + "&axi=" + Obj_TIPO_TARJETA_DAL.CAx);

                CargarDatos();
            }
            else
            {
                // Mensaje DE QUE SE DEBE DE SELECCIONAR LOS DATOS

                //MessageBox.Show("Debe seleccionar un Empleado", "Alerta",
                //    MessageBoxButtons.OK, MessageBoxIcon.Hand);
            }

        }

        protected void btn_Eliminar_Click(object sender, ImageClickEventArgs e)
        {
            string sMsjError = string.Empty;
            try
            {
                // Se obtiene el valor del ID para su eliminacion
                Obj_PREGUNTA_DAL.BID_Pregunta_Seguridad = Convert.ToByte(dgvDatos.SelectedRow.Cells[1].Text);
                //Obj_TIPO_TARJETA_DAL.SDescripcion = dgvTipoTarjeta.SelectedRow.Cells[2].Text;

                //  Nombre del SP
                string sNombreSP = "[SCH_CUENTA].[sp_delete_TBL_PREGUNTAS]";

                //  Se llama el metodo del BLL 
                Obj_PREGUNTA_BLL.Eliminar_Pregunta(ref Obj_PREGUNTA_DAL);


                if ((Obj_PREGUNTA_DAL.Bln_BEstado == true) &&
                    (sMsjError == string.Empty))
                {
                    /*   MENSAJE DE ELIMINACION EXITOSA  */
                    //MessageBox.Show("El estado [" + int_IdDepartamento + "], fue eliminado correctamente.",
                    //                     "Proceso Exitoso",
                    //                     MessageBoxButtons.OK,
                    //                     MessageBoxIcon.Information);
                    CargarDatos();
                }
                else
                {
                    /*   MENSAJE DE ELIMINACION FALLIDA  */

                    //MessageBox.Show("Se presento un error a la hora de borrar el Estado  [" + int_IdDepartamento + "]. Por el siguiente error: " + ObjSQL.sMsgError,
                    //                     "Error",
                    //                     MessageBoxButtons.OK,
                    //                     MessageBoxIcon.Error);
                }
            }
            catch (Exception ex)
            {
                sMsjError = ex.Message.ToString();
                //Obj_CUENTAS_DAL.sMsjError = ex.Message.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}