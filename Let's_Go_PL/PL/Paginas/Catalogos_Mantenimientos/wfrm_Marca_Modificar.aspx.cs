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
    public partial class wfrm_Marca_Modificar : System.Web.UI.Page
    {
        public Cls_TBL_MARCA_BLL Obj_MARCA_BLL = new Cls_TBL_MARCA_BLL();
        public Cls_TBL_MARCA_DAL Obj_MARCA_DAL = new Cls_TBL_MARCA_DAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            Obj_MARCA_DAL.CAx = Convert.ToChar(Request.QueryString["axi"]);
            if (!IsPostBack)
            {
                Obj_MARCA_DAL.CAx = Convert.ToChar(Request.QueryString["axi"]);
                if (Obj_MARCA_DAL.CAx == 'I')
                {
                    txt_Id_Marca.Text = string.Empty;
                    txt_Descripcion.Text = string.Empty;
                }
                else if (Obj_MARCA_DAL.CAx == 'U')
                {
                    txt_Id_Marca.Text = Request.QueryString["id"];
                    txt_Descripcion.Text = Request.QueryString["descripcion"];
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
            Response.Redirect("../Catalogos_Mantenimientos/wfrm_Marca_Listar.aspx");
        }

        protected void btn_Guardar_Click(object sender, ImageClickEventArgs e)
        {
            /*  FALTA LA VALIDACION DE LAS CAJAS DE TEXTO VACIAS  */

            string sMsjError = string.Empty;

            // Se obtiene los valores para insert
            Obj_MARCA_DAL.BID_Marca = Convert.ToByte(txt_Id_Marca.Text);
            Obj_MARCA_DAL.SDescripcion = txt_Descripcion.Text;


            if (Obj_MARCA_DAL.CAx == 'I')
            {
                Obj_MARCA_BLL.Insertar_Marca(ref Obj_MARCA_DAL);
                if ((Obj_MARCA_DAL.Bln_BEstado == true) &&
                        (sMsjError == string.Empty))
                {
                    Response.Write("<script>alert('Datos ingresados exitosamente');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Hubo un error en el ingreso de los datos: " + sMsjError + "');</script>");
                }
            }
            else
            {
                Obj_MARCA_BLL.Modificar_Marca(ref Obj_MARCA_DAL);

                if ((Obj_MARCA_DAL.Bln_BEstado == true) &&
                        (sMsjError == string.Empty))
                {
                    Response.Write("<script>alert('Datos modificados exitosamente');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Hubo un error en la modificacion de los datos: " + sMsjError + "');</script>");
                }
            }
        }

        protected void btn_Limpiar_Click(object sender, ImageClickEventArgs e)
        {
            txt_Id_Marca.Text = string.Empty;
            txt_Descripcion.Text = string.Empty;
        }
    }
}