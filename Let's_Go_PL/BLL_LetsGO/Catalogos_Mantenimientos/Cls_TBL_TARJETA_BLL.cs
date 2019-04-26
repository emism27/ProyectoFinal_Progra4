using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL_LetsGO.Catalogos_Mantenimientos;
using System.Data;

namespace BLL_LetsGO.Catalogos_Mantenimientos
{
    public class Cls_TBL_TARJETA_BLL
    {
        // Metodo para listar los datos
        public void Listar_Tarjeta(ref Cls_TBL_TARJETA_DAL Obj_TARJETA_DAL)
        {
            // se crea la variable error para pasarlo por el servicio
            string sMsjError = string.Empty;

            try
            {
                // con esto se crea la conexion al servicio 
                svc_Cat_Mat.LetsGo_InterfaceClient Obj_svc_LetsGo = new svc_Cat_Mat.LetsGo_InterfaceClient();

                // el nombre del Store procedure
                string sNombreSP = "[SCH_CUENTA].[sp_select_TBL_TARJETA]";

                // se crea un datatable para que sea llenado
                DataTable dt = new DataTable();

                // se llena el DataTable llamando al servicio del WCF del contract
                dt = Obj_svc_LetsGo.ListarDatos(sNombreSP, ref sMsjError);

                if (sMsjError == string.Empty)
                {
                    // se llena el DataTable del objeto de la tabla poniendolo que sea igual al Datatable llenado desde el servicio
                    Obj_TARJETA_DAL.Obj_DT = dt;
                    sMsjError = string.Empty;
                    Obj_TARJETA_DAL.Bln_BEstado = true;
                }
                else
                {
                    Obj_TARJETA_DAL.Bln_BEstado = false;
                }
            }
            catch (Exception ex)
            {
                sMsjError = ex.Message.ToString();
            }
        }

        public void Eliminar_Tarjeta(ref Cls_TBL_TARJETA_DAL Obj_TARJETA_DAL)
        {

            string sMsjError = string.Empty;
            try
            {
                svc_Cat_Mat.LetsGo_InterfaceClient Obj_svc_LetsGo = new svc_Cat_Mat.LetsGo_InterfaceClient();

                string sNombreSP = "[SCH_CUENTA].[sp_delete_TBL_TIPO_TARJETA]";

                DataTable dt_Parametros = new DataTable("PARAMETROS");

                dt_Parametros.Columns.Add("NombreParametro");
                dt_Parametros.Columns.Add("TipoParametros");
                dt_Parametros.Columns.Add("ValorParametro");

                dt_Parametros.Rows.Add("@ID_Numero_Tarjeta", "9", Obj_TARJETA_DAL.IID_Numero_Tarjeta);

                Obj_svc_LetsGo.Elimina_Datos(sNombreSP, dt_Parametros, ref sMsjError);

                if (sMsjError == string.Empty)
                {
                    sMsjError = string.Empty;
                    Obj_TARJETA_DAL.Bln_BEstado = true;
                }
                else
                {
                    Obj_TARJETA_DAL.Bln_BEstado = false;
                }
            }
            catch (Exception ex)
            {
                sMsjError = ex.Message.ToString();
            }
        }

        public void Insertar_Tarjeta(ref Cls_TBL_TARJETA_DAL Obj_TARJETA_DAL)
        {
            string sMsjError = string.Empty;
            try
            {

                svc_Cat_Mat.LetsGo_InterfaceClient Obj_svc_LetsGo = new svc_Cat_Mat.LetsGo_InterfaceClient();

                string sNombreSP = "[SCH_CUENTA].[sp_insert_TBL_TARJETA]";

                DataTable dt_Parametros = new DataTable("PARAMETROS");
                dt_Parametros.Columns.Add("NombreParametro");
                dt_Parametros.Columns.Add("TipoParametros");
                dt_Parametros.Columns.Add("ValorParametro");

                //   ( NombreVariable de la BD ,  el numero del SqlDbType del NonQuery, valor de la variable)
                dt_Parametros.Rows.Add("@ID_Numero_Tarjeta", "9", Obj_TARJETA_DAL.IID_Numero_Tarjeta);
                dt_Parametros.Rows.Add("@ID_Tipo_Tarjeta", "8", Obj_TARJETA_DAL.BID_Tipo_Tarjeta);
                dt_Parametros.Rows.Add("@ID_Banco", "8", Obj_TARJETA_DAL.BID_Banco);
                dt_Parametros.Rows.Add("@Numero_Cuenta", "9", Obj_TARJETA_DAL.INumero_Cuenta);
                dt_Parametros.Rows.Add("@Fecha_Vencimiento", "7", Obj_TARJETA_DAL.DTFecha_Vencimiento);
                dt_Parametros.Rows.Add("@CVV", "10", Obj_TARJETA_DAL.BCVV);

                Obj_svc_LetsGo.Insertar_DatosSinIdentity(sNombreSP, dt_Parametros, ref sMsjError);

                if (sMsjError == string.Empty)
                {
                    sMsjError = string.Empty;
                    Obj_TARJETA_DAL.CAx = 'U';
                    Obj_TARJETA_DAL.Bln_BEstado = true;
                }
                else
                {
                    Obj_TARJETA_DAL.CAx = 'I';
                    Obj_TARJETA_DAL.Bln_BEstado = false;
                }

            }
            catch (Exception ex)
            {
                sMsjError = ex.Message.ToString();
            }
        }

        public void Modificar_Tarjeta(ref Cls_TBL_TARJETA_DAL Obj_TARJETA_DAL)
        {
            string sMsjError = string.Empty;
            try
            {
                svc_Cat_Mat.LetsGo_InterfaceClient Obj_svc_LetsGo = new svc_Cat_Mat.LetsGo_InterfaceClient();

                string sNombreSP = "[SCH_CUENTA].[sp_update_TBL_TARJETA]";

                DataTable dt_Parametros = new DataTable("PARAMETROS");
                dt_Parametros.Columns.Add("NombreParametro");
                dt_Parametros.Columns.Add("TipoParametros");
                dt_Parametros.Columns.Add("ValorParametro");

                //   ( NombreVariable de la BD ,  el numero del SqlDbType del NonQuery, valor de la variable)
                dt_Parametros.Rows.Add("@ID_Numero_Tarjeta", "9", Obj_TARJETA_DAL.IID_Numero_Tarjeta);
                dt_Parametros.Rows.Add("@ID_Tipo_Tarjeta", "8", Obj_TARJETA_DAL.BID_Tipo_Tarjeta);
                dt_Parametros.Rows.Add("@ID_Banco", "8", Obj_TARJETA_DAL.BID_Banco);
                dt_Parametros.Rows.Add("@Numero_Cuenta", "9", Obj_TARJETA_DAL.INumero_Cuenta);
                dt_Parametros.Rows.Add("@Fecha_Vencimiento", "7", Obj_TARJETA_DAL.DTFecha_Vencimiento);
                dt_Parametros.Rows.Add("@CVV", "8", Obj_TARJETA_DAL.BCVV);

                Obj_svc_LetsGo.Modifica_Datos(sNombreSP, dt_Parametros, ref sMsjError);

                if (sMsjError == string.Empty)
                {
                    sMsjError = string.Empty;
                    Obj_TARJETA_DAL.CAx = 'U';
                    Obj_TARJETA_DAL.Bln_BEstado = true;
                }
                else
                {
                    Obj_TARJETA_DAL.CAx = 'U';
                    Obj_TARJETA_DAL.Bln_BEstado = false;

                }

            }
            catch (Exception ex)
            {
                sMsjError = ex.Message.ToString();
            }
        }

        public void Filtrar_Tipo_Tarjeta(ref Cls_TBL_TARJETA_DAL Obj_TARJETA_DAL, string sFiltro)
        {
            string sMsjError = string.Empty;

            // con esto se crea la conexion al servicio 
            svc_Cat_Mat.LetsGo_InterfaceClient Obj_svc_LetsGo = new svc_Cat_Mat.LetsGo_InterfaceClient();

            // el nombre del Store procedure
            string sNombreSP = "[SCH_CUENTA].[sp_search_TBL_TARJETA]";

            //DataTable dt_Parametros = new DataTable("PARAMETROS");

            //dt_Parametros.Columns.Add("NombreParametro");
            //dt_Parametros.Columns.Add("TipoParametros");
            //dt_Parametros.Columns.Add("ValorParametro");

            //dt_Parametros.Rows.Add("@ID_Tipo_Tarjeta", "8", sFiltro);

            // se crea un datatable para que sea llenado
            DataTable dt = new DataTable();

            // se llena el DataTable llamando al servicio del WCF del contract
            dt = Obj_svc_LetsGo.FiltrarDatos(sNombreSP, "@Descripcion", SqlDbType.VarChar, sFiltro, ref sMsjError);

            if (sMsjError == string.Empty)
            {
                // se llena el DataTable del objeto de la tabla poniendolo que sea igual al Datatable llenado desde el servicio
                Obj_TARJETA_DAL.Obj_DT = dt;
                sMsjError = string.Empty;
                Obj_TARJETA_DAL.Bln_BEstado = true;
            }
            else
            {
                Obj_TARJETA_DAL.Bln_BEstado = false;
            }

        }

        public int Mes(ref Cls_TBL_TARJETA_DAL Obj_TARJETA_DAL)
        {

            DateTime dtMes = DateTime.Parse(Obj_TARJETA_DAL.SFecha);

            Obj_TARJETA_DAL.IMes = dtMes.Month;

            return Obj_TARJETA_DAL.IMes;
        }

        public int Año(ref Cls_TBL_TARJETA_DAL Obj_TARJETA_DAL)
        {
            DateTime dtAño = DateTime.Parse(Obj_TARJETA_DAL.SFecha);

            Obj_TARJETA_DAL.IAnio = dtAño.Year;

            return Obj_TARJETA_DAL.IAnio;
        }
    }
}
