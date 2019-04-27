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
    public partial class wfrm_Empresa_Modificar : System.Web.UI.Page
    {
        public Cls_TBL_EMPRESA_BLL Obj_EMPRESA_BLL = new Cls_TBL_EMPRESA_BLL();
        public Cls_TBL_EMPRESA_DAL Obj_EMPRESA_DAL = new Cls_TBL_EMPRESA_DAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            Obj_EMPRESA_DAL.CAx = Convert.ToChar(Request.QueryString["axi"]);
            if (!IsPostBack)
            {
                Obj_EMPRESA_DAL.CAx = Convert.ToChar(Request.QueryString["axi"]);
                if (Obj_EMPRESA_DAL.CAx == 'I')
                {
                    txt_Id_Empresa.Text = string.Empty;
                    txt_Nombre.Text = string.Empty;
                    txt_Direccion.Text = string.Empty;
                    txt_Sitio.Text = string.Empty;
                    txt_Telefono.Text = string.Empty;
                    txt_Correo.Text = string.Empty;
                    //CargarIdEstado();
                }
                else if (Obj_EMPRESA_DAL.CAx == 'U')
                {

                    txt_Id_Empresa.Text = Request.QueryString["id"];
                    txt_Nombre.Text = Request.QueryString["nombre"];
                    txt_Direccion.Text = Request.QueryString["direccion"];
                    txt_Sitio.Text = Request.QueryString["sitio"];
                    txt_Telefono.Text = Request.QueryString["telefono"];
                    txt_Correo.Text = Request.QueryString["correo"];
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
            Response.Redirect("../Catalogos_Mantenimientos/wfrm_Empresa_Listar.aspx");
        }

        protected void btn_Guardar_Click(object sender, ImageClickEventArgs e)
        {
            /*  FALTA LA VALIDACION DE LAS CAJAS DE TEXTO VACIAS  */

            string sMsjError = string.Empty;

            // Se obtiene los valores para insert
            Obj_EMPRESA_DAL.IID_Cedula_Juridica = Convert.ToInt32(txt_Id_Empresa.Text);
            Obj_EMPRESA_DAL.SNombre_Empresa = txt_Nombre.Text;
            Obj_EMPRESA_DAL.SDireccion = txt_Direccion.Text;
            Obj_EMPRESA_DAL.SSitio_Web = txt_Sitio.Text;
            Obj_EMPRESA_DAL.ITelefono = Convert.ToInt32(txt_Telefono.Text);
            Obj_EMPRESA_DAL.SEmail = txt_Correo.Text;

            if (Obj_EMPRESA_DAL.CAx == 'I')
            {
                Obj_EMPRESA_BLL.Insertar_Empresa(ref Obj_EMPRESA_DAL);
                if ((Obj_EMPRESA_DAL.Bln_BEstado == true) &&
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
                Obj_EMPRESA_BLL.Modificar_Empresa(ref Obj_EMPRESA_DAL);

                if ((Obj_EMPRESA_DAL.Bln_BEstado == true) &&
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

 
    }
}