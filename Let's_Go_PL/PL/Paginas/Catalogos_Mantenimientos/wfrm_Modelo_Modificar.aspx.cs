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
    public partial class wfrm_Modelo_Modificar : System.Web.UI.Page
    {
        Cls_TBL_MODELO_BLL Obj_MODELO_BLL = new Cls_TBL_MODELO_BLL();
        Cls_TBL_MODELO_DAL Obj_MODELO_DAL = new Cls_TBL_MODELO_DAL();
        Cls_TBL_MARCA_BLL Obj_MARCA_BLL = new Cls_TBL_MARCA_BLL();
        Cls_TBL_MARCA_DAL Obj_MARCA_DAL = new Cls_TBL_MARCA_DAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            Obj_MODELO_DAL.CAx = Convert.ToChar(Request.QueryString["axi"]);
            if (!IsPostBack)
            {
                Obj_MODELO_DAL.CAx = Convert.ToChar(Request.QueryString["axi"]);
                Cargar_Combo_Marca();
                if (Obj_MODELO_DAL.CAx == 'I')
                {
                    txt_Id_Modelo.Text = string.Empty;
                    txt_Modelo.Text = string.Empty;
                    cbx_Id_Marca.Text = string.Empty;
                }
                else if (Obj_MODELO_DAL.CAx == 'U')
                {
                    txt_Id_Modelo.Text = Request.QueryString["id"];
                    txt_Modelo.Text = Request.QueryString["descripcion"]; 
                    cbx_Id_Marca.SelectedValue = Request.QueryString["idMarca"];
                }
                else
                {
                }
            }
        }

        protected void btn_Salir_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("../Catalogos_Mantenimientos/wfrm_Modelo_Listar.aspx");
        }

        protected void btn_Guardar_Click(object sender, ImageClickEventArgs e)
        {
            ///*  FALTA LA VALIDACION DE LAS CAJAS DE TEXTO VACIAS  */
            string sMsjError = string.Empty;

            // Se obtiene los valores para insert
            Obj_MODELO_DAL.BID_Modelo = Convert.ToByte(txt_Id_Modelo.Text);
            Obj_MODELO_DAL.BID_Marca = Convert.ToByte(cbx_Id_Marca.SelectedValue);
            Obj_MODELO_DAL.SModelo = txt_Modelo.Text;


            if (Obj_MODELO_DAL.CAx == 'I')
            {
                Obj_MODELO_BLL.Insertar_Modelo(ref Obj_MODELO_DAL);
                if ((Obj_MODELO_DAL.Bln_BEstado == true) &&
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
                Obj_MODELO_BLL.Modificar_Modelo(ref Obj_MODELO_DAL);

                if ((Obj_MODELO_DAL.Bln_BEstado == true) &&
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
            txt_Id_Modelo.Text = string.Empty;
            txt_Modelo.Text = string.Empty;
            cbx_Id_Marca.Text = string.Empty;
        }

        public void Cargar_Combo_Marca()
        {
            string sMsjError = string.Empty;

            try
            {
                Obj_MARCA_BLL.Listar_Marca(ref Obj_MARCA_DAL);
                if (Obj_MARCA_DAL.Obj_DT != null)
                {
                    cbx_Id_Marca.DataSource = Obj_MARCA_DAL.Obj_DT;
                    cbx_Id_Marca.DataValueField = Obj_MARCA_DAL.Obj_DT.Columns["ID_Marca"].ToString();
                    cbx_Id_Marca.DataTextField = Obj_MARCA_DAL.Obj_DT.Columns["Descripcion"].ToString();
                    cbx_Id_Marca.DataBind();
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