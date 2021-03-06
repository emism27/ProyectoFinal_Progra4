﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL_LetsGO.Catalogos_Mantenimientos;   // conexion al dal 
using BLL_LetsGO.Catalogos_Mantenimientos;   // conexion al bll

namespace PL.Paginas.Catalogos_Mantenimientos
{
    public partial class wfrm_Tipo_Tarjeta_Modificar : System.Web.UI.Page
    {
        public Cls_TBL_TIPO_TARJETA_BLL Obj_TIPO_TARJETA_BLL = new Cls_TBL_TIPO_TARJETA_BLL();
        public Cls_TBL_TIPO_TARJETA_DAL Obj_TIPO_TARJETA_DAL = new Cls_TBL_TIPO_TARJETA_DAL();

        protected void Page_Load(object sender, EventArgs e) // REVISAR ESTE
        {
            Obj_TIPO_TARJETA_DAL.CAx = Convert.ToChar(Request.QueryString["axi"]);
            if (!IsPostBack)
            {
                Obj_TIPO_TARJETA_DAL.CAx = Convert.ToChar(Request.QueryString["axi"]);
                if (Obj_TIPO_TARJETA_DAL.CAx == 'I')
                {
                    txt_Id_Tipo_Tarjeta.Text = string.Empty;
                    txt_Descripcion.Text = string.Empty;
                }
                else if (Obj_TIPO_TARJETA_DAL.CAx == 'U')
                {
                    txt_Id_Tipo_Tarjeta.Text = Request.QueryString["id"];
                    txt_Descripcion.Text = Request.QueryString["descripcion"];
                }
                else
                {
                }
            }
        }

        protected void btn_Salir_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("../Catalogos_Mantenimientos/wfrm_Tipo_Tarjeta_Listar.aspx");
        }

        protected void btn_Guardar_Click(object sender, ImageClickEventArgs e)
        {
            /*  FALTA LA VALIDACION DE LAS CAJAS DE TEXTO VACIAS  */

            string sMsjError = string.Empty;
            // Se obtiene los valores para insert
            Obj_TIPO_TARJETA_DAL.BID_Tipo_Tarjeta = Convert.ToByte(txt_Id_Tipo_Tarjeta.Text);
            Obj_TIPO_TARJETA_DAL.SDescripcion = txt_Descripcion.Text;


            if (Obj_TIPO_TARJETA_DAL.CAx == 'I')
            {
                Obj_TIPO_TARJETA_BLL.Insertar_TipoTarjeta(ref Obj_TIPO_TARJETA_DAL);
                if ((Obj_TIPO_TARJETA_DAL.Bln_BEstado == true) &&
                        (sMsjError == string.Empty))
                {
                    Response.Write("<script>alert('Datos ingresados exitosamente');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Hubo un error en el ingreso de los datos: "+sMsjError+"');</script>");
                }
            }
            else
            {
                Obj_TIPO_TARJETA_BLL.Modificar_TipoTarjeta(ref Obj_TIPO_TARJETA_DAL);

                if ((Obj_TIPO_TARJETA_DAL.Bln_BEstado == true) &&
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
            txt_Id_Tipo_Tarjeta.Text = string.Empty;
            txt_Descripcion.Text = string.Empty;
        }
    }
}