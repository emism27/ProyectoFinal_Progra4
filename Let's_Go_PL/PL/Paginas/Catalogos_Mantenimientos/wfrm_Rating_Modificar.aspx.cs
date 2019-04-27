using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL_LetsGO.Catalogos_Mantenimientos;   // conexion al dal 
using BLL_LetsGO.Catalogos_Mantenimientos;   // conexion al bll
using System.Globalization;

namespace PL.Paginas.Catalogos_Mantenimientos
{
    public partial class wfrm_Rating_Modificar : System.Web.UI.Page
    {
        Cls_TBL_RATING_BLL Obj_RATING_BLL = new Cls_TBL_RATING_BLL();
        Cls_TBL_RATING_DAL Obj_RATING_DAL = new Cls_TBL_RATING_DAL();
        Cls_TBL_VIAJE Obj_VIAJE = new Cls_TBL_VIAJE();
        Cls_TBL_VIAJE_DAL Obj_VIAJE_DAL = new Cls_TBL_VIAJE_DAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            Obj_RATING_DAL.CAx = Convert.ToChar(Request.QueryString["axi"]);
            if (!IsPostBack)
            {
                Obj_RATING_DAL.CAx = Convert.ToChar(Request.QueryString["axi"]);
                Cargar_Combo_Viaje();
                if (Obj_RATING_DAL.CAx == 'I')
                {
                    txt_Id_Rating.Text = string.Empty;
                    txt_Descripcion_Rating.Text = string.Empty;
                    cbx_Id_Viaje.Text = string.Empty;
                }
                else if (Obj_RATING_DAL.CAx == 'U')
                {
                    txt_Id_Rating.Text = Request.QueryString["id"];
                    txt_Descripcion_Rating.Text = Request.QueryString["rating"];
                    cbx_Id_Viaje.SelectedValue = Request.QueryString["idViaje"];
                }
                else
                {
                }
            }
        }

        protected void btn_Salir_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("../Catalogos_Mantenimientos/wfrm_Rating_Listar.aspx");
        }

        protected void btn_Guardar_Click(object sender, ImageClickEventArgs e)
        {
            ///*  FALTA LA VALIDACION DE LAS CAJAS DE TEXTO VACIAS  */
            string sMsjError = string.Empty;

            // Se obtiene los valores para insert
            Obj_RATING_DAL.BID_Rating = Convert.ToByte(txt_Id_Rating.Text);
            Obj_RATING_DAL.BRating = Convert.ToByte(txt_Descripcion_Rating.Text);
            Obj_RATING_DAL.IID_Viaje = Convert.ToByte(cbx_Id_Viaje.SelectedValue);


            if (Obj_RATING_DAL.CAx == 'I')
            {
                Obj_RATING_BLL.Insertar_Rating(ref Obj_RATING_DAL);
                if ((Obj_RATING_DAL.Bln_BEstado == true) &&
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
                Obj_RATING_BLL.Modificar_Rating(ref Obj_RATING_DAL);

                if ((Obj_RATING_DAL.Bln_BEstado == true) &&
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
            txt_Id_Rating.Text = string.Empty;
            txt_Descripcion_Rating.Text = string.Empty;
            cbx_Id_Viaje.Text = string.Empty;
        }

        public void Cargar_Combo_Viaje()
        {
            string sMsjError = string.Empty;

            try
            {
                Obj_VIAJE.Listar_Viaje(ref Obj_VIAJE_DAL);
                if (Obj_VIAJE_DAL.Obj_DT != null)
                {
                    cbx_Id_Viaje.DataSource = Obj_VIAJE_DAL.Obj_DT;
                    cbx_Id_Viaje.DataValueField = Obj_VIAJE_DAL.Obj_DT.Columns["ID_Viaje"].ToString();
                    cbx_Id_Viaje.DataTextField = Obj_VIAJE_DAL.Obj_DT.Columns["ID_Viaje"].ToString();
                    cbx_Id_Viaje.DataBind();
                }
            }
            catch (Exception ex)
            {
                sMsjError = ex.Message.ToString();
                //MessageBox.Show("Error al cargar los datos, contacte con el Administrador del Sistema" + sMensajeError,
                //                "Error",
                //                 MessageBoxButtons.OK,
                //                 MessageBoxIcon.Error);
            }
        }

    }
}