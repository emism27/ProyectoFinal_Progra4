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
    public partial class wfrm_Cuenta_Modificar : System.Web.UI.Page
    {
        public Cls_TBL_CUENTA_BLL Obj_CUENTA_BLL = new Cls_TBL_CUENTA_BLL();
        public Cls_TBL_CUENTA_DAL Obj_CUENTA_DAL = new Cls_TBL_CUENTA_DAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            Obj_CUENTA_DAL.CAx = Convert.ToChar(Request.QueryString["axi"]);
            if (!IsPostBack)
            {
                Obj_CUENTA_DAL.CAx = Convert.ToChar(Request.QueryString["axi"]);
                Cargar_Combo_Tarjeta();
                if (Obj_CUENTA_DAL.CAx == 'I')
                {
                    txt_Id_Cuenta.Text = string.Empty;
                    txt_Nombre.Text = string.Empty;
                    txt_Apellido1.Text = string.Empty;
                    txt_Apellido2.Text = string.Empty;
                    txt_Correo.Text = string.Empty;
                    txt_Telefono.Text = string.Empty;
                    cbx_Id_Pregunta_Seguridad.Text = string.Empty;
                    txt_Respuesta_Seguridad.Text = string.Empty;
                    //CargarIdEstado();
                }
                else if (Obj_CUENTA_DAL.CAx == 'U')
                {
                    txt_Id_Cuenta.Text = Request.QueryString["id"];
                    txt_Nombre.Text = Request.QueryString["nombre"];
                    txt_Apellido1.Text = Request.QueryString["apellido1"];
                    txt_Apellido2.Text = Request.QueryString["apellido2"];
                    txt_Correo.Text = Request.QueryString["correo"];
                    txt_Telefono.Text = Request.QueryString["telefono"];
                    cbx_Id_Pregunta_Seguridad.SelectedValue = Request.QueryString["idTarjeta"];
                    txt_Respuesta_Seguridad.Text = Request.QueryString["respuesta"];
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
            Response.Redirect("../Catalogos_Mantenimientos/wfrm_Cuenta_Listar.aspx");
        }

        public void Cargar_Combo_Tarjeta()
        {
            string sMsjError = string.Empty;

            try
            {
                Obj_CUENTA_BLL.Listar_Cuenta(ref Obj_CUENTA_DAL);
                if (Obj_CUENTA_DAL.Obj_DT != null)
                {
                    cbx_Id_Pregunta_Seguridad.DataSource = Obj_CUENTA_DAL.Obj_DT;
                    cbx_Id_Pregunta_Seguridad.DataValueField = Obj_CUENTA_DAL.Obj_DT.Columns["ID_Tarjeta"].ToString();
                    cbx_Id_Pregunta_Seguridad.DataTextField = Obj_CUENTA_DAL.Obj_DT.Columns["Descripcion"].ToString();
                    cbx_Id_Pregunta_Seguridad.DataBind();
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


        protected void btn_Guardar_Click(object sender, ImageClickEventArgs e)
        {
            string sMsjError = string.Empty;

            // Se obtiene los valores para insert
            Obj_CUENTA_DAL.IID_Cuenta = Convert.ToInt32(txt_Id_Cuenta.Text);
            Obj_CUENTA_DAL.SNombre = txt_Nombre.Text;
            Obj_CUENTA_DAL.SApellido_1 = txt_Apellido1.Text;
            Obj_CUENTA_DAL.SApellido_2 = txt_Apellido2.Text;
            Obj_CUENTA_DAL.SEmail = txt_Correo.Text;
            Obj_CUENTA_DAL.ITelefono = Convert.ToInt32(txt_Telefono.Text);
            Obj_CUENTA_DAL.BID_Pregunta_Seguridad = Convert.ToByte(cbx_Id_Pregunta_Seguridad.SelectedValue);
            Obj_CUENTA_DAL.SRespuesta_Seguridad = txt_Respuesta_Seguridad.Text;


            if (Obj_CUENTA_DAL.CAx == 'I')
            {
                Obj_CUENTA_BLL.Insertar_Cuenta(ref Obj_CUENTA_DAL);
                if ((Obj_CUENTA_DAL.Bln_BEstado == true) &&
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
                Obj_CUENTA_BLL.Modificar_Cuenta(ref Obj_CUENTA_DAL);

                if ((Obj_CUENTA_DAL.Bln_BEstado == true) &&
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

        protected void txt_Id_Cuenta_TextChanged(object sender, EventArgs e)
        {

        }


    }
}