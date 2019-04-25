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
    public partial class wfrm_Tarjeta_Modificar : System.Web.UI.Page
    {
        Cls_TBL_TARJETA_BLL Obj_TARJETA_BLL = new Cls_TBL_TARJETA_BLL();
        public Cls_TBL_TARJETA_DAL Obj_TARJETA_DAL = new Cls_TBL_TARJETA_DAL();
        Cls_TBL_TIPO_TARJETA_BLL Obj_Tipo_TARJETA_BLL = new Cls_TBL_TIPO_TARJETA_BLL();
        Cls_TBL_TIPO_TARJETA_DAL Obj_Tipo_TARJETA_DAL = new Cls_TBL_TIPO_TARJETA_DAL();
        Cls_TBL_BANCO_BLL Obj_Banco_BLL = new Cls_TBL_BANCO_BLL();
        Cls_TBL_BANCO_DAL Obj_Banco_DAL = new Cls_TBL_BANCO_DAL();


        protected void Page_Load(object sender, EventArgs e)
        {
            Obj_TARJETA_DAL.CAx = Convert.ToChar(Request.QueryString["axi"]);
            if (!IsPostBack)
            {
                Obj_TARJETA_DAL.CAx = Convert.ToChar(Request.QueryString["axi"]);
                Cargar_Combo_Tipo_Tarjeta();
                Cargar_Combo_Banco();
                CargarMes();
                CargarAnnyo();
                if (Obj_TARJETA_DAL.CAx == 'I')
                {
                    txt_Id_Tarjeta.Text = string.Empty;
                    txt_Numero_Cuenta.Text = string.Empty;
                    txt_Fecha_Vencimiento.Text = string.Empty;
                    txt_CVV.Text = string.Empty;
                    cbx_Id_Tipo_Tarjeta.Text = string.Empty;
                    cbx_Id_Banco.Text = string.Empty;
                    mes.Text = string.Empty;
                    annyo.Text = string.Empty;
                }
                else if (Obj_TARJETA_DAL.CAx == 'U')
                {
                    txt_Id_Tarjeta.Text = Request.QueryString["idNumeroTarjeta"];
                    txt_Numero_Cuenta.Text = Request.QueryString["NumeroCuenta"];
                    txt_Fecha_Vencimiento.Text = Request.QueryString["fechaVenc"];
                    txt_CVV.Text = Request.QueryString["CVV"];
                    cbx_Id_Tipo_Tarjeta.SelectedValue = Request.QueryString["idTipoTarjeta"];
                    cbx_Id_Banco.SelectedValue = Request.QueryString["idBanco"];
                }
                else
                {
                }
            }
        }

        protected void btn_Salir_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("../Catalogos_Mantenimientos/wfrm_Tarjeta_Listar.aspx");
        }

        protected void btn_Guardar_Click(object sender, ImageClickEventArgs e)
        {
            /*  FALTA LA VALIDACION DE LAS CAJAS DE TEXTO VACIAS  */
            int iDia, iAnnyo;
            string sMes, sMes2;

            sMes = Convert.ToString(mes.SelectedValue);
            iAnnyo = Convert.ToInt32(annyo.SelectedValue);

            sMes2 = sMes.PadLeft(2,'0');
            string sMsjError = string.Empty;
            string fecha;
            
            iDia = System.DateTime.DaysInMonth(iAnnyo, Convert.ToInt32(sMes2));


            if (iAnnyo % 4 == 0 && (iAnnyo % 100 != 0 || iAnnyo % 400 == 0))
            {
                Console.WriteLine("El año " + iAnnyo + " Si es bisiesto ");

                switch (sMes2)
                {
                    case "01":
                        {
                            iDia = 31;
                            break;
                        }
                    case "02":
                        {
                            iDia = 29;
                            break;
                        }
                    case "03":
                        {
                            iDia = 31;
                            break;
                        }
                    case "4":
                        {
                            iDia = 30;
                            break;
                        }
                    case "5":
                        {
                            iDia = 31;
                            break;
                        }
                    case "6":
                        {
                            iDia = 30;
                            break;
                        }
                    case "7":
                        {
                            iDia = 31;
                            break;
                        }
                    case "8":
                        {
                            iDia = 31;
                            break;
                        }
                    case "9":
                        {
                            iDia = 30;
                            break;
                        }
                    case "10":
                        {
                            iDia = 31;
                            break;
                        }
                    case "11":
                        {
                            iDia = 30;
                            break;
                        }
                    case "12":
                        {
                            iDia = 31;
                            break;
                        }
                    default:
                        iDia = 31;
                        break;
                }

            }
            else
            {
                Console.WriteLine("El año " + iAnnyo + " No es bisiesto ");
                switch (mes.ToString())
                {
                    case "1":
                        {
                            iDia = 31;
                            break;
                        }
                    case "2":
                        {
                            iDia = 28;
                            break;
                        }
                    case "3":
                        {
                            iDia = 31;
                            break;
                        }
                    case "4":
                        {
                            iDia = 30;
                            break;
                        }
                    case "5":
                        {
                            iDia = 31;
                            break;
                        }
                    case "6":
                        {
                            iDia = 30;
                            break;
                        }
                    case "7":
                        {
                            iDia = 31;
                            break;
                        }
                    case "8":
                        {
                            iDia = 31;
                            break;
                        }
                    case "9":
                        {
                            iDia = 30;
                            break;
                        }
                    case "10":
                        {
                            iDia = 31;
                            break;
                        }
                    case "11":
                        {
                            iDia = 30;
                            break;
                        }
                    case "12":
                        {
                            iDia = 31;
                            break;
                        }
                    default:
                        iDia = 31;
                        break;
                }
                Console.ReadLine();
            }
            fecha = (iDia + "-" + iMes + "-" + iAnnyo);

            Obj_TARJETA_DAL.DTFecha_Vencimiento = Convert.ToDateTime(fecha);






            // Se obtiene los valores para insert
            Obj_TARJETA_DAL.IID_Numero_Tarjeta = Convert.ToInt64(txt_Id_Tarjeta.Text);
            Obj_TARJETA_DAL.BID_Tipo_Tarjeta = Convert.ToByte(cbx_Id_Tipo_Tarjeta.SelectedValue);
            Obj_TARJETA_DAL.BID_Banco = Convert.ToByte(cbx_Id_Banco.SelectedValue);
            Obj_TARJETA_DAL.INumero_Cuenta = Convert.ToInt64(txt_Numero_Cuenta.Text);
            Obj_TARJETA_DAL.DTFecha_Vencimiento = Convert.ToDateTime(txt_Fecha_Vencimiento.Text);
            Obj_TARJETA_DAL.BCVV = Convert.ToInt16(txt_CVV.Text);


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

        protected void btn_Limpiar_Click(object sender, ImageClickEventArgs e)
        {

        }

        public void Cargar_Combo_Tipo_Tarjeta()
        {
            string sMsjError = string.Empty;

            try
            {
                Obj_Tipo_TARJETA_BLL.Listar_TipoTarjeta(ref Obj_Tipo_TARJETA_DAL);
                if (Obj_Tipo_TARJETA_DAL.Obj_DT != null)
                {
                    cbx_Id_Tipo_Tarjeta.DataSource = Obj_Tipo_TARJETA_DAL.Obj_DT;
                    cbx_Id_Tipo_Tarjeta.DataValueField = Obj_Tipo_TARJETA_DAL.Obj_DT.Columns["ID_Tipo_Tarjeta"].ToString();
                    cbx_Id_Tipo_Tarjeta.DataTextField = Obj_Tipo_TARJETA_DAL.Obj_DT.Columns["Descripcion"].ToString();
                    cbx_Id_Tipo_Tarjeta.DataBind();
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

        public void Cargar_Combo_Banco()
        {
            string sMsjError = string.Empty;

            try
            {
                Obj_Banco_BLL.Listar_Banco(ref Obj_Banco_DAL);
                if (Obj_Tipo_TARJETA_DAL.Obj_DT != null)
                {
                    cbx_Id_Banco.DataSource = Obj_Banco_DAL.Obj_DT;
                    cbx_Id_Banco.DataValueField = Obj_Banco_DAL.Obj_DT.Columns["ID_Banco"].ToString();
                    cbx_Id_Banco.DataTextField = Obj_Banco_DAL.Obj_DT.Columns["Nombre_Banco"].ToString();
                    cbx_Id_Banco.DataBind();
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

        private void CargarMes()
        {
            //valor por default           ddlMes.Items.Add("Seleccione mes");

            List<string> nombreMes = DateTimeFormatInfo.CurrentInfo.MonthNames.Take(12).ToList();
            var listaMesesSeleccionados = nombreMes.Select(m => new
            {
                Id = nombreMes.IndexOf(m) + 1,
                Name = m
            });

            foreach (var mes in listaMesesSeleccionados)
            {
                this.mes.Items.Add(new ListItem(mes.Name, mes.Id.ToString()));
            }
        }

        private void CargarAnnyo()
        {
            int x = 2050;

            for (int y = 1900; y <= x; y++)
            {
                annyo.Items.Add(y.ToString());
            }
        }



    }
}