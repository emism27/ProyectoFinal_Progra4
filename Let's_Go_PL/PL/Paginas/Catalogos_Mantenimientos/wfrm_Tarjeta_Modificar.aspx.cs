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
                    //txt_Fecha_Vencimiento.Text = string.Empty;
                    txt_CVV.Text = string.Empty;
                    cbx_Id_Tipo_Tarjeta.Text = string.Empty;
                    cbx_Id_Banco.Text = string.Empty;
                    cbx_Mes.Text = string.Empty;
                    cbx_Annyo.Text = string.Empty;
                }
                else if (Obj_TARJETA_DAL.CAx == 'U')
                {
                    Obj_TARJETA_DAL.SFecha = Request.QueryString["fechaVenc"];
                    Obj_TARJETA_DAL.IMes = Obj_TARJETA_BLL.Mes(ref Obj_TARJETA_DAL);
                    Obj_TARJETA_DAL.IAnio = Obj_TARJETA_BLL.Año(ref Obj_TARJETA_DAL);

                    txt_Id_Tarjeta.Text = Request.QueryString["idNumeroTarjeta"];
                    txt_Numero_Cuenta.Text = Request.QueryString["NumeroCuenta"];
                    cbx_Mes.SelectedValue = Obj_TARJETA_DAL.IMes.ToString();
                    cbx_Annyo.SelectedValue = Obj_TARJETA_DAL.IAnio.ToString();
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
            string sMsjError = string.Empty;
            FechaCombo();

            // Se obtiene los valores para insert
            Obj_TARJETA_DAL.IID_Numero_Tarjeta = Convert.ToInt64(txt_Id_Tarjeta.Text);
            Obj_TARJETA_DAL.BID_Tipo_Tarjeta = Convert.ToByte(cbx_Id_Tipo_Tarjeta.SelectedValue);
            Obj_TARJETA_DAL.BID_Banco = Convert.ToByte(cbx_Id_Banco.SelectedValue);
            Obj_TARJETA_DAL.INumero_Cuenta = Convert.ToInt64(txt_Numero_Cuenta.Text);
            Obj_TARJETA_DAL.DTFecha_Vencimiento = Convert.ToDateTime(Obj_TARJETA_DAL.SFecha);
            Obj_TARJETA_DAL.BCVV = Convert.ToInt16(txt_CVV.Text);


            if (Obj_TARJETA_DAL.CAx == 'I')
            {
                Obj_TARJETA_BLL.Insertar_Tarjeta(ref Obj_TARJETA_DAL);
                if ((Obj_TARJETA_DAL.Bln_BEstado == true) &&
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
                Obj_TARJETA_BLL.Modificar_Tarjeta(ref Obj_TARJETA_DAL);

                if ((Obj_TARJETA_DAL.Bln_BEstado == true) &&
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
            txt_Id_Tarjeta.Text = string.Empty;
            txt_Numero_Cuenta.Text = string.Empty;
            txt_CVV.Text = string.Empty;
            cbx_Id_Tipo_Tarjeta.Text = string.Empty;
            cbx_Id_Banco.Text = string.Empty;
            cbx_Mes.Text = string.Empty;
            cbx_Annyo.Text = string.Empty;

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

        public void CargarMes()
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
                this.cbx_Mes.Items.Add(new ListItem(mes.Name, mes.Id.ToString()));
            }
        }

        public void CargarAnnyo()
        {
            int x = 2050;

            for (int y = 1900; y <= x; y++)
            {
                cbx_Annyo.Items.Add(y.ToString());
            }
        }

        public void FechaCombo()
        {
            int iDia, iAnnyo;
            string sMes, sMes2 = string.Empty;

            sMes = Convert.ToString(cbx_Mes.SelectedValue);
            iAnnyo = Convert.ToInt32(cbx_Annyo.SelectedValue);

            if (iAnnyo % 4 == 0 && (iAnnyo % 100 != 0 || iAnnyo % 400 == 0))
            {
                switch (sMes)
                {
                    case "1":
                        {
                            iDia = 31;
                            sMes2 = sMes.PadLeft(2, '0');
                            break;
                        }
                    case "2":
                        {
                            iDia = 29;
                            sMes2 = sMes.PadLeft(2, '0');
                            break;
                        }
                    case "3":
                        {
                            iDia = 31;
                            sMes2 = sMes.PadLeft(2, '0');
                            break;
                        }
                    case "4":
                        {
                            iDia = 30;
                            sMes2 = sMes.PadLeft(2, '0');
                            break;
                        }
                    case "5":
                        {
                            iDia = 31;
                            sMes2 = sMes.PadLeft(2, '0');
                            break;
                        }
                    case "6":
                        {
                            iDia = 30;
                            sMes2 = sMes.PadLeft(2, '0');
                            break;
                        }
                    case "7":
                        {
                            iDia = 31;
                            sMes2 = sMes.PadLeft(2, '0');
                            break;
                        }
                    case "8":
                        {
                            iDia = 31;
                            sMes2 = sMes.PadLeft(2, '0');
                            break;
                        }
                    case "9":
                        {
                            iDia = 30;
                            sMes2 = sMes.PadLeft(2, '0');
                            break;
                        }
                    case "10":
                        {
                            iDia = 31;
                            sMes2 = sMes;
                            break;
                        }
                    case "11":
                        {
                            iDia = 30;
                            sMes2 = sMes;
                            break;
                        }
                    case "12":
                        {
                            iDia = 31;
                            sMes2 = sMes;
                            break;
                        }
                    default:
                        iDia = 31;
                        sMes2 = sMes;
                        break;
                }

            }
            else
            {
                switch (sMes)
                {
                    case "1":
                        {
                            iDia = 31;
                            sMes2 = sMes.PadLeft(2, '0');
                            break;
                        }
                    case "2":
                        {
                            iDia = 28;
                            sMes2 = sMes.PadLeft(2, '0');
                            break;
                        }
                    case "3":
                        {
                            iDia = 31;
                            sMes2 = sMes.PadLeft(2, '0');
                            break;
                        }
                    case "4":
                        {
                            iDia = 30;
                            sMes2 = sMes.PadLeft(2, '0');
                            break;
                        }
                    case "5":
                        {
                            iDia = 31;
                            sMes2 = sMes.PadLeft(2, '0');
                            break;
                        }
                    case "6":
                        {
                            iDia = 30;
                            sMes2 = sMes.PadLeft(2, '0');
                            break;
                        }
                    case "7":
                        {
                            iDia = 31;
                            sMes2 = sMes.PadLeft(2, '0');
                            break;
                        }
                    case "8":
                        {
                            iDia = 31;
                            sMes2 = sMes.PadLeft(2, '0');
                            break;
                        }
                    case "9":
                        {
                            iDia = 30;
                            sMes2 = sMes.PadLeft(2, '0');
                            break;
                        }
                    case "10":
                        {
                            iDia = 31;
                            sMes2 = sMes;
                            break;
                        }
                    case "11":
                        {
                            iDia = 30;
                            sMes2 = sMes;
                            break;
                        }
                    case "12":
                        {
                            iDia = 31;
                            sMes2 = sMes;
                            break;
                        }
                    default:
                        iDia = 31;
                        sMes2 = sMes;
                        break;
                }
            }
            Obj_TARJETA_DAL.SFecha = (iDia + "-" + sMes2 + "-" + iAnnyo);
        }


    }
}