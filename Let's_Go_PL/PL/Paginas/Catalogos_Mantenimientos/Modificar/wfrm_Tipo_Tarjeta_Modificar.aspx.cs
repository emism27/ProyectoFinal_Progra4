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
    public partial class wfrm_Tipo_Tarjeta_Modificar : System.Web.UI.Page
    {
        Cls_TBL_TIPO_TARJETA_BLL Obj_TIPO_TARJETA_BLL = new Cls_TBL_TIPO_TARJETA_BLL();
        public Cls_TBL_TIPO_TARJETA_DAL Obj_TIPO_TARJETA_DAL = new Cls_TBL_TIPO_TARJETA_DAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            Obj_TIPO_TARJETA_DAL.CAx = Convert.ToChar(Request.QueryString["axi"]);
            if (!IsPostBack)
            {
                Obj_TIPO_TARJETA_DAL.CAx = Convert.ToChar(Request.QueryString["axi"]);
                if (Obj_TIPO_TARJETA_DAL.CAx == 'I')
                {
                    txt_Id_Tipo_Tarjeta.Value = string.Empty;
                    txt_Descripcion.Value = string.Empty;
                    //CargarIdEstado();
                }
                else if (Obj_TIPO_TARJETA_DAL.CAx == 'U')
                {
                    txt_Id_Tipo_Tarjeta.Value = Request.QueryString["id"];
                    txt_Descripcion.Value = Request.QueryString["descripcion"];
                    //CargarIdEstado();
                    //cbx_id_estado.Text = ObjDepartamento_DAL.Str_IdEstado;
                }
                else
                {
                }
            }
        }

        //protected void btn_Guardar_Click(object sender, EventArgs e)
        //{
        //    /*  FALTA LA VALIDACION DE LAS CAJAS DE TEXTO VACIAS  */

        //    string sMsjError = string.Empty;

        //    // Se obtiene los valores para insert
        //    Obj_TIPO_TARJETA_DAL.BID_Tipo_Tarjeta = Convert.ToByte(txt_Id_Tipo_Tarjeta.Value);
        //    Obj_TIPO_TARJETA_DAL.SDescripcion = txt_Descripcion.Value;


        //    if (Obj_TIPO_TARJETA_DAL.CAx == 'I')
        //    {
        //        Obj_TIPO_TARJETA_BLL.Insertar_TipoTarjeta(ref Obj_TIPO_TARJETA_DAL);
        //        if ((Obj_TIPO_TARJETA_DAL.Bln_BEstado == true) &&
        //                (sMsjError == string.Empty))
        //        {
        //            /*   MENSAJE DE guardado EXITOSo  */
        //            //MessageBox.Show("Se guardo exitosamente el nuevo Horario", "EXITO",
        //            //    MessageBoxButtons.OK, MessageBoxIcon.Information);
        //        }
        //        else
        //        {
        //            /*   MENSAJE DE guardado FALLIDo  */

        //            //MessageBox.Show("Se presento un error a la hora de guardar el nuevo Horario. \n \n Error [ "
        //            //    + Obj_Cuentas_Editar_DAL.sMsjError + " ].", "ERROR",
        //            //    MessageBoxButtons.OK, MessageBoxIcon.Error);
        //        }
        //    }
        //    else
        //    {
        //        Obj_TIPO_TARJETA_BLL.Modificar_TipoTarjeta(ref Obj_TIPO_TARJETA_DAL);

        //        if ((Obj_TIPO_TARJETA_DAL.Bln_BEstado == true) &&
        //                (sMsjError == string.Empty))
        //        {
        //            /*   MENSAJE DE modificacion EXITOSa  */

        //            //MessageBox.Show("Se modifico exitosamente el nuevo Horario", "EXITO",
        //            //    MessageBoxButtons.OK, MessageBoxIcon.Information);
        //        }
        //        else
        //        {
        //            /*   MENSAJE DE modificacion FALLIDa  */

        //            //MessageBox.Show("Se presento un error a la hora de modificar el nuevo Horario. \n \n Error [ "
        //            //    + Obj_Cuentas_Editar_DAL.sMsjError + " ].", "ERROR",
        //            //    MessageBoxButtons.OK, MessageBoxIcon.Error);
        //        }
        //    }

        //}

        protected void btn_Guardar_Click1(object sender, EventArgs e)
        {
            /*  FALTA LA VALIDACION DE LAS CAJAS DE TEXTO VACIAS  */

            string sMsjError = string.Empty;

            // Se obtiene los valores para insert
            Obj_TIPO_TARJETA_DAL.BID_Tipo_Tarjeta = Convert.ToByte(txt_Id_Tipo_Tarjeta.Value);
            Obj_TIPO_TARJETA_DAL.SDescripcion = txt_Descripcion.Value;


            if (Obj_TIPO_TARJETA_DAL.CAx == 'I')
            {
                Obj_TIPO_TARJETA_BLL.Insertar_TipoTarjeta(ref Obj_TIPO_TARJETA_DAL);
                if ((Obj_TIPO_TARJETA_DAL.Bln_BEstado == true) &&
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
                Obj_TIPO_TARJETA_BLL.Modificar_TipoTarjeta(ref Obj_TIPO_TARJETA_DAL);

                if ((Obj_TIPO_TARJETA_DAL.Bln_BEstado == true) &&
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