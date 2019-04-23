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
    public partial class wfrm_Tarjeta_Listar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarDatos();  // metodo para listar 
        }

        Cls_TBL_TARJETA_BLL Obj_TARJETA_BLL = new Cls_TBL_TARJETA_BLL();
        Cls_TBL_TARJETA_DAL Obj_TARJETA_DAL = new Cls_TBL_TARJETA_DAL();

        public void CargarDatos()  // metodo para listar los datos
        {
            if (txt_Filtro.Value == string.Empty)
            {
                // el objeto BLL tipo tarjeta llama al metodo de listar que esta en el bll haciendo referencia al objeto DAL de la tabla
                Obj_TARJETA_BLL.Listar_Tarjeta(ref Obj_TARJETA_DAL);

                // VACIA EL GRID VIEW
                dgvTarjeta.DataSource = null;

                // LLENA EL GRIDVIEW UTILIZANDO LA VARIABLE CREADA OBJ_DT que esta en el DAL de la tabla
                //     public DataTable Obj_DT = new DataTable();
                dgvTarjeta.DataSource = Obj_TARJETA_DAL.Obj_DT;
                dgvTarjeta.DataBind();
            }
            else
            {
            }
        }

        protected void eliminar_Click(object sender, EventArgs e)
        {
            string sMsjError = string.Empty;

            /*  Si selecciono algun dato  */
            //if (dgvEmpleados.Rows.Count > 0)
            //{

            /*  MENSAJE DE CONFIRMACION  */
            //if (MessageBox.Show("Desea Eliminar el Registro Seleccionado?",
            //                    "Confirmación",
            //                    MessageBoxButtons.YesNo,
            //                    MessageBoxIcon.Question) == DialogResult.Yes)
            //{
            try
            {
                // Se obtiene el valor del ID para su eliminacion
                Obj_TARJETA_DAL.IID_Numero_Tarjeta = Convert.ToByte(dgvTarjeta.SelectedRow.Cells[1].Text);
                //Obj_TIPO_TARJETA_DAL.SDescripcion = dgvTipoTarjeta.SelectedRow.Cells[2].Text;

                //  Nombre del SP
                string sNombreSP = "[SCH_CUENTA].[sp_delete_TBL_TIPO_TARJETA]";

                //  Se llama el metodo del BLL 
                Obj_TARJETA_BLL.Eliminar_Tarjeta(ref Obj_TARJETA_DAL);


                if ((Obj_TARJETA_DAL.Bln_BEstado == true) &&
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
            /* }   ELSE DE LA CONFIRMACION DE ELIMINACION
               else
               {

               }*/
            /*   }   else de si selecciono algun dato
               else
               {
                   MessageBox.Show("Debe seleccionar un Empleado", "Alerta",
                       MessageBoxButtons.OK, MessageBoxIcon.Hand);
               }*/

        }

        protected void modificar_Click(object sender, EventArgs e)
        {
            if (dgvTarjeta.Rows.Count > 0)
            {
                //  SE CREAN LOS OBJETOS
                //Cls_TBL_TIPO_TARJETA_BLL Obj_TIPO_TARJETA_BLL = new Cls_TBL_TIPO_TARJETA_BLL();
                //Cls_TBL_TIPO_TARJETA_DAL Obj_TIPO_TARJETA_DAL = new Cls_TBL_TIPO_TARJETA_DAL();
                Modificar.wfrm_Tipo_Tarjeta_Modificar ModificarDepartamento = new Modificar.wfrm_Tipo_Tarjeta_Modificar();

                // Se obtiene los valores para su modificacion
                Obj_TARJETA_DAL.IID_Numero_Tarjeta = Convert.ToInt64(dgvTarjeta.SelectedRow.Cells[1].Text);
                Obj_TARJETA_DAL.BID_Tipo_Tarjeta = Convert.ToByte(dgvTarjeta.SelectedRow.Cells[2].Text);
                Obj_TARJETA_DAL.BID_Banco = Convert.ToByte(dgvTarjeta.SelectedRow.Cells[1].Text);
                Obj_TARJETA_DAL.INumero_Cuenta = Convert.ToInt64(dgvTarjeta.SelectedRow.Cells[2].Text);
                Obj_TARJETA_DAL.DTFecha_Vencimiento = Convert.ToDateTime(dgvTarjeta.SelectedRow.Cells[1].Text);
                Obj_TARJETA_DAL.BCVV = Convert.ToByte(dgvTarjeta.SelectedRow.Cells[2].Text);


                Obj_TARJETA_DAL.CAx = 'M';

                // se llama la pantalla de modificar y se envian los datos
                Response.Redirect("../Modificar/pruebaModificar.aspx?idNumeroTarjeta=" + Obj_TARJETA_DAL.IID_Numero_Tarjeta + "&idTipoTarjeta=" + Obj_TARJETA_DAL.BID_Tipo_Tarjeta + "&idBanco=" + Obj_TARJETA_DAL.BID_Banco + "&NumeroCuenta=" + Obj_TARJETA_DAL.INumero_Cuenta + "&fechaVenc=" + Obj_TARJETA_DAL.DTFecha_Vencimiento + "&CVV=" + Obj_TARJETA_DAL.BCVV);

                CargarDatos();
            }
            else
            {
                // Mensaje DE QUE SE DEBE DE SELECCIONAR LOS DATOS

                //MessageBox.Show("Debe seleccionar un Empleado", "Alerta",
                //    MessageBoxButtons.OK, MessageBoxIcon.Hand);
            }
        }

        protected void Insertar_Click(object sender, EventArgs e)
        {
            Cls_TBL_TARJETA_BLL Obj_TARJETA_BLL = new Cls_TBL_TARJETA_BLL();
            Cls_TBL_TARJETA_DAL Obj_TARJETA_DAL = new Cls_TBL_TARJETA_DAL();
            Modificar.wfrm_Tarjeta_Modificar ModificarDepartamento = new Modificar.wfrm_Tarjeta_Modificar();


            Obj_TARJETA_DAL.CAx = 'I';

            Response.Redirect("../Modificar/wfrm_Tarjeta_Modificar.aspx?axi=" + Obj_TARJETA_DAL.CAx);

        }

        protected void filtrar_Click(object sender, EventArgs e)
        {
            if (cbx_Filtro.Value == "C01")
            {
                txt_Filtro.Value = "2";

            }
            else
            {

                txt_Filtro.Value = string.Empty;
            }

            //if (cbx_Filtro.Items[1].Selected.ToString() == "C01")
            //{
            //    txt_Filtro.Value = "2";

            //}
            //else
            //{

            //    txt_Filtro.Value = string.Empty;
            //}


            if (txt_Filtro.Value == string.Empty)
            {
                // el objeto BLL tipo tarjeta llama al metodo de listar que esta en el bll haciendo referencia al objeto DAL de la tabla
                Obj_TARJETA_BLL.Listar_Tarjeta(ref Obj_TARJETA_DAL);

                // VACIA EL GRID VIEW
                dgvTarjeta.DataSource = null;

                // LLENA EL GRIDVIEW UTILIZANDO LA VARIABLE CREADA OBJ_DT que esta en el DAL de la tabla
                //     public DataTable Obj_DT = new DataTable();
                dgvTarjeta.DataSource = Obj_TARJETA_DAL.Obj_DT;
                dgvTarjeta.DataBind();

            }
            else
            {
                Obj_TARJETA_BLL.Filtrar_Tipo_Tarjeta(ref Obj_TARJETA_DAL, txt_Filtro.Value);
                // VACIA EL GRID VIEW
                dgvTarjeta.DataSource = null;

                // LLENA EL GRIDVIEW UTILIZANDO LA VARIABLE CREADA OBJ_DT que esta en el DAL de la tabla
                //     public DataTable Obj_DT = new DataTable();
                dgvTarjeta.DataSource = Obj_TARJETA_DAL.Obj_DT;
                dgvTarjeta.DataBind();
            }
        }

    }
}