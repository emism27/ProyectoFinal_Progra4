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
    public partial class wfrm_Pregunta_Seguridad_Modificar : System.Web.UI.Page
    {
        public Cls_TBL_PREGUNTAS_SEGURIDAD_BLL Obj_PREGUNTAS_BLL = new Cls_TBL_PREGUNTAS_SEGURIDAD_BLL();
        public Cls_TBL_PREGUNTAS_DAL Obj_PREGUNTAS_DAL = new Cls_TBL_PREGUNTAS_DAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            Obj_PREGUNTAS_DAL.CAx = Convert.ToChar(Request.QueryString["axi"]);
            if (!IsPostBack)
            {
                Obj_PREGUNTAS_DAL.CAx = Convert.ToChar(Request.QueryString["axi"]);
                if (Obj_PREGUNTAS_DAL.CAx == 'I')
                {
                    txt_Id_Pregunta_Seguridad.Text = string.Empty;
                    txt_Pregunta.Text = string.Empty;
                    //CargarIdEstado();
                }
                else if (Obj_PREGUNTAS_DAL.CAx == 'U')
                {
                    txt_Id_Pregunta_Seguridad.Text = Request.QueryString["id"];
                    txt_Pregunta.Text = Request.QueryString["detalle"];
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
            Response.Redirect("../Catalogos_Mantenimientos/wfrm_Pregunta_Seguridad_Listar.aspx");
        }

        protected void btn_Guardar_Click(object sender, ImageClickEventArgs e)
        {
            /*  FALTA LA VALIDACION DE LAS CAJAS DE TEXTO VACIAS  */

            string sMsjError = string.Empty;

            // Se obtiene los valores para insert
            Obj_PREGUNTAS_DAL.BID_Pregunta_Seguridad = Convert.ToByte(txt_Id_Pregunta_Seguridad.Text);
            Obj_PREGUNTAS_DAL.SDetalle_Preguntas = txt_Pregunta.Text;


            if (Obj_PREGUNTAS_DAL.CAx == 'I')
            {
                Obj_PREGUNTAS_BLL.Insertar_Pregunta(ref Obj_PREGUNTAS_DAL);
                if ((Obj_PREGUNTAS_DAL.Bln_BEstado == true) &&
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
                Obj_PREGUNTAS_BLL.Modificar_Pregunta(ref Obj_PREGUNTAS_DAL);

                if ((Obj_PREGUNTAS_DAL.Bln_BEstado == true) &&
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
    }
}