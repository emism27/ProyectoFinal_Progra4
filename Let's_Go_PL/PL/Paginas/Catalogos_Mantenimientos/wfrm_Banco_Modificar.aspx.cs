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
    public partial class wfrm_Banco_Modificar : System.Web.UI.Page
    {
        public Cls_TBL_BANCO_BLL Obj_BANCO_BLL = new Cls_TBL_BANCO_BLL();
        public Cls_TBL_BANCO_DAL Obj_BANCO_DAL = new Cls_TBL_BANCO_DAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            Obj_BANCO_DAL.CAx = Convert.ToChar(Request.QueryString["axi"]);
            if (!IsPostBack)
            {
                Obj_BANCO_DAL.CAx = Convert.ToChar(Request.QueryString["axi"]);
                if (Obj_BANCO_DAL.CAx == 'I')
                {
                    txt_Id_Banco.Text = string.Empty;
                    txt_Nombre_Banco.Text = string.Empty;
                    //CargarIdEstado();
                }
                else if (Obj_BANCO_DAL.CAx == 'U')
                {
                    txt_Id_Banco.Text = Request.QueryString["id"];
                    txt_Nombre_Banco.Text = Request.QueryString["nombreBanco"];
                    //CargarIdEstado();
                    //cbx_id_estado.Text = ObjDepartamento_DAL.Str_IdEstado;
                }
                else
                {
                }
            }
        }

        protected void btn_Salir_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("../Catalogos_Mantenimientos/wfrm_Banco_Listar.aspx");
        }

        protected void btn_Guardar_Click(object sender, ImageClickEventArgs e)
        {
            /*  FALTA LA VALIDACION DE LAS CAJAS DE TEXTO VACIAS  */

            string sMsjError = string.Empty;

            // Se obtiene los valores para insert
            Obj_BANCO_DAL.BID_Banco = Convert.ToByte(txt_Id_Banco.Text);
            Obj_BANCO_DAL.SNombre_Banco = txt_Nombre_Banco.Text;


            if (Obj_BANCO_DAL.CAx == 'I')
            {
                Obj_BANCO_BLL.Insertar_Banco(ref Obj_BANCO_DAL);
                if ((Obj_BANCO_DAL.Bln_BEstado == true) &&
                        (sMsjError == string.Empty))
                {
                    /*   MENSAJE DE guardado EXITOSo  */
                    //MessageBox.Show("Se guardo exitosamente el nuevo Horario", "EXITO",
                    //    MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    /*   MENSAJE DE guardado FALLIDo  */

                    //MessageBox.Show("Se presento un error a la hora de guardar el nuevo Horario. \n \n Error [ "
                    //    + Obj_Cuentas_Editar_DAL.sMsjError + " ].", "ERROR",
                    //    MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else
            {
                Obj_BANCO_BLL.Modificar_Banco(ref Obj_BANCO_DAL);

                if ((Obj_BANCO_DAL.Bln_BEstado == true) &&
                        (sMsjError == string.Empty))
                {
                    /*   MENSAJE DE modificacion EXITOSa  */

                    //MessageBox.Show("Se modifico exitosamente el nuevo Horario", "EXITO",
                    //    MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    /*   MENSAJE DE modificacion FALLIDa  */

                    //MessageBox.Show("Se presento un error a la hora de modificar el nuevo Horario. \n \n Error [ "
                    //    + Obj_Cuentas_Editar_DAL.sMsjError + " ].", "ERROR",
                    //    MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        protected void btn_Limpiar_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}