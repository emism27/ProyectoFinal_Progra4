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
    public partial class wfrm_Solicitud_Viaje_Modificar : System.Web.UI.Page
    {
        Cls_TBL_SOLICITUD_VIAJE_BLL Obj_SOLICITUD_VIAJE_BLL = new Cls_TBL_SOLICITUD_VIAJE_BLL();
        Cls_TBL_SOLICITUD_VIAJE_DAL Obj_SOLICITUD_VIAJE_DAL = new Cls_TBL_SOLICITUD_VIAJE_DAL();
        Cls_TBL_CLIENTE_BLL Obj_CLIENTE_BLL = new Cls_TBL_CLIENTE_BLL();
        Cls_TBL_CLIENTE_DAL Obj_CLIENTE_DAL = new Cls_TBL_CLIENTE_DAL();
        Cls_TBL_TIPO_VEHICULO_DAL Obj_TIPO_VEHICULO_DAL = new Cls_TBL_TIPO_VEHICULO_DAL();
        //Cls_TBL_TIPO_VEHICULO_BLL Obj_TIPO_VEHICULO_BLL = new Cls_TBL_TIPO_VEHICULO_BLL();


        protected void Page_Load(object sender, EventArgs e)
        {
            Obj_SOLICITUD_VIAJE_DAL.CAx = Convert.ToChar(Request.QueryString["axi"]);
            if (!IsPostBack)
            {
                Obj_SOLICITUD_VIAJE_DAL.CAx = Convert.ToChar(Request.QueryString["axi"]);
                Cargar_Combo_Cliente();
                //Cargar_Combo_TipoVehiculo();
                if (Obj_SOLICITUD_VIAJE_DAL.CAx == 'I')
                {
                    txt_Id_Adminitxt_Id_Solicitud_Viajestrador.Text = string.Empty;
                    cbx_Id_Cliente.Text = string.Empty;
                    cbx_Id_Tipo_Vehiculo.Text = string.Empty;
                    txt_Ruta_Inical.Text = string.Empty;
                    txt_Ruta_Final.Text = string.Empty;
                    txt_Distancia.Text = string.Empty;
                    txt_Costo_Aproximado.Text = string.Empty;

                }
                else if (Obj_SOLICITUD_VIAJE_DAL.CAx == 'U')
                {
                    txt_Id_Adminitxt_Id_Solicitud_Viajestrador.Text = Request.QueryString["id"];
                    cbx_Id_Cliente.SelectedValue = Request.QueryString["idCliente"];
                    cbx_Id_Tipo_Vehiculo.SelectedValue = Request.QueryString["idTipoVehiculo"];
                    txt_Ruta_Inical.Text = Request.QueryString["RutaI"];
                    txt_Ruta_Final.Text = Request.QueryString["RuraF"];
                    txt_Distancia.Text = Request.QueryString["km"];
                    txt_Costo_Aproximado.Text = Request.QueryString["CostoI"];
                }
                else
                {
                }
            }
        }

        protected void btn_Salir_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("../Catalogos_Mantenimientos/wfrm_Solicitud_Viaje_Listar.aspx");
        }

        protected void btn_Guardar_Click(object sender, ImageClickEventArgs e)
        {
            ///*  FALTA LA VALIDACION DE LAS CAJAS DE TEXTO VACIAS  */
            string sMsjError = string.Empty;

            // Se obtiene los valores para insert
            Obj_SOLICITUD_VIAJE_DAL.SID_Solicitud_Viaje = Convert.ToInt16(txt_Id_Adminitxt_Id_Solicitud_Viajestrador.Text);
            Obj_SOLICITUD_VIAJE_DAL.IID_Cliente = Convert.ToInt32(cbx_Id_Cliente.SelectedValue);
            Obj_SOLICITUD_VIAJE_DAL.BID_Tipo_Vehiculo = 1;
            //Obj_SOLICITUD_VIAJE_DAL.BID_Tipo_Vehiculo = Convert.ToByte(cbx_Id_Tipo_Vehiculo.SelectedValue);

            Obj_SOLICITUD_VIAJE_DAL.SRuta_Inicial = txt_Ruta_Inical.Text;
            Obj_SOLICITUD_VIAJE_DAL.SRuta_Final = txt_Ruta_Final.Text;
            Obj_SOLICITUD_VIAJE_DAL.DCantidad_Km = Convert.ToDecimal(txt_Distancia.Text);
            Obj_SOLICITUD_VIAJE_DAL.DCosto_Inicial = Convert.ToDecimal(txt_Costo_Aproximado.Text);

            if (Obj_SOLICITUD_VIAJE_DAL.CAx == 'I')
            {
                Obj_SOLICITUD_VIAJE_BLL.Insertar_SOLICITUD_VIAJE(ref Obj_SOLICITUD_VIAJE_DAL);
                if ((Obj_SOLICITUD_VIAJE_DAL.Bln_BEstado == true) &&
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
                Obj_SOLICITUD_VIAJE_BLL.Modificar_SOLICITUD_VIAJE(ref Obj_SOLICITUD_VIAJE_DAL);

                if ((Obj_SOLICITUD_VIAJE_DAL.Bln_BEstado == true) &&
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
            txt_Id_Adminitxt_Id_Solicitud_Viajestrador.Text = string.Empty;
            cbx_Id_Cliente.Text = string.Empty;
            cbx_Id_Tipo_Vehiculo.Text = string.Empty;
            txt_Ruta_Inical.Text = string.Empty;
            txt_Ruta_Final.Text = string.Empty;
            txt_Distancia.Text = string.Empty;
            txt_Costo_Aproximado.Text = string.Empty;
        }

        public void Cargar_Combo_Cliente()
        {
            string sMsjError = string.Empty;

            try
            {
                Obj_CLIENTE_BLL.Listar_Cliente(ref Obj_CLIENTE_DAL);
                if (Obj_CLIENTE_DAL.Obj_DT != null)
                {
                    cbx_Id_Cliente.DataSource = Obj_CLIENTE_DAL.Obj_DT;
                    cbx_Id_Cliente.DataValueField = Obj_CLIENTE_DAL.Obj_DT.Columns["ID_Cliente"].ToString();
                    cbx_Id_Cliente.DataTextField = Obj_CLIENTE_DAL.Obj_DT.Columns["ID_Cliente"].ToString();
                    cbx_Id_Cliente.DataBind();
                }
            }
            catch (Exception ex)
            {
                sMsjError = ex.Message.ToString();
            }
        }


        //public void Cargar_Combo_TipoVehiculo()
        //{
        //    string sMsjError = string.Empty;

        //    try
        //    {
        //        Obj_TIPO_VEHICULO_BLL.Listar_TIPO_VEHICULO(ref Obj_TIPO_VEHICULO_DAL);
        //        if (Obj_VIAJE_DAL.Obj_DT != null)
        //        {
        //            cbx_Id_Tipo_Vehiculo.DataSource = Obj_TIPO_VEHICULO_DAL.Obj_DT;
        //            cbx_Id_Tipo_Vehiculo.DataValueField = Obj_TIPO_VEHICULO_DAL.Obj_DT.Columns["ID_Tipo_Vehiculo"].ToString();
        //            cbx_Id_Tipo_Vehiculo.DataTextField = Obj_TIPO_VEHICULO_DAL.Obj_DT.Columns["Descripcion"].ToString();
        //            cbx_Id_Tipo_Vehiculo.DataBind();
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        sMsjError = ex.Message.ToString();
        //        //MessageBox.Show("Error al cargar los datos, contacte con el Administrador del Sistema" + sMensajeError,
        //        //                "Error",
        //        //                 MessageBoxButtons.OK,
        //        //                 MessageBoxIcon.Error);
        //    }
        //}

    }
}