using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL_LetsGO.Catalogos_Mantenimientos;   // conexion al dal 
using BLL_LetsGO.Catalogos_Mantenimientos;   // conexion al bll


namespace PL.Paginas.Catalogos_Mantenimientos.Modificar
{
    public partial class wfrm_Tarjeta_Modificar : System.Web.UI.Page
    {
        Cls_TBL_TARJETA_BLL Obj_TARJETA_BLL = new Cls_TBL_TARJETA_BLL();
        public Cls_TBL_TARJETA_DAL Obj_TARJETA_DAL = new Cls_TBL_TARJETA_DAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Obj_TARJETA_DAL.CAx = Convert.ToChar(Request.QueryString["axi"]);
                if (Obj_TARJETA_DAL.CAx == 'I')
                {
                    txt_Id_Numero_Tarjeta.Value = string.Empty;
                    txt_Numero_Cuenta.Value = string.Empty;
                    txt_Fecha_Vencimiento.Value = string.Empty;
                    txt_CVV.Value = string.Empty;
                    cbx_Id_Tipo_Tarjeta.Value = string.Empty;
                    cbx_Id_Banco.Value = string.Empty;

                    //CargarIdEstado();
                }
                else if (Obj_TARJETA_DAL.CAx == 'U')
                {
                    txt_Id_Numero_Tarjeta.Value = Request.QueryString["idNumeroTarjeta"];
                    txt_Numero_Cuenta.Value = Request.QueryString["NumeroCuenta"];
                    txt_Fecha_Vencimiento.Value = Request.QueryString["fechaVenc"];
                    txt_CVV.Value = Request.QueryString["CVV"];
                    cbx_Id_Tipo_Tarjeta.Value = Request.QueryString["idTipoTarjeta"];
                    cbx_Id_Banco.Value = Request.QueryString["idBanco"];

                    //CargarIdEstado();
                    //cbx_id_estado.Text = ObjDepartamento_DAL.Str_IdEstado;
                }
                else
                {
                }
            }
        }

        protected void btn_Guardar_Click(object sender, EventArgs e)
        {
            /*  FALTA LA VALIDACION DE LAS CAJAS DE TEXTO VACIAS  */

            string sMsjError = string.Empty;

            // Se obtiene los valores para insert
            Obj_TARJETA_DAL.IID_Numero_Tarjeta = Convert.ToInt64(txt_Id_Numero_Tarjeta.Value);
            Obj_TARJETA_DAL.BID_Tipo_Tarjeta = Convert.ToByte(cbx_Id_Tipo_Tarjeta.Value);
            Obj_TARJETA_DAL.BID_Banco = Convert.ToByte(cbx_Id_Banco.Value);
            Obj_TARJETA_DAL.INumero_Cuenta = Convert.ToInt64(txt_Numero_Cuenta.Value);
            Obj_TARJETA_DAL.DTFecha_Vencimiento = Convert.ToDateTime(txt_Fecha_Vencimiento.Value);
            Obj_TARJETA_DAL.BCVV = Convert.ToByte(txt_CVV.Value);


            if (Obj_TARJETA_DAL.CAx == 'I')
            {
                Obj_TARJETA_BLL.Insertar_Tarjeta(ref Obj_TARJETA_DAL);
                if ((Obj_TARJETA_DAL.Bln_BEstado == true) &&
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
                Obj_TARJETA_BLL.Modificar_Tarjeta(ref Obj_TARJETA_DAL);

                if ((Obj_TARJETA_DAL.Bln_BEstado == true) &&
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