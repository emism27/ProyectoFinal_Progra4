using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL_LetsGO.Catalogos_Mantenimientos;
using System.Data;

namespace BLL_LetsGO.Catalogos_Mantenimientos
{
    public class Cls_TBL_SOLICITUD_VIAJE_BLL
    {
        // Metodo para listar los datos
        public void Listar_SOLICITUD_VIAJE(ref Cls_TBL_SOLICITUD_VIAJE_DAL Obj_SOLICITUD_VIAJE_DAL)
        {
            // se crea la variable error para pasarlo por el servicio
            string sMsjError = string.Empty;

            try
            {
                // con esto se crea la conexion al servicio 
                svc_Cat_Mat.LetsGo_InterfaceClient Obj_svc_LetsGo = new svc_Cat_Mat.LetsGo_InterfaceClient();

                // el nombre del Store procedure
                string sNombreSP = "[SCH_SERVICIOS].[sp_select_TBL_SOLICITUD_VIAJE]";

                // se crea un datatable para que sea llenado
                DataTable dt = new DataTable();

                // se llena el DataTable llamando al servicio del WCF del contract
                dt = Obj_svc_LetsGo.ListarDatos(sNombreSP, ref sMsjError);

                if (sMsjError == string.Empty)
                {
                    // se llena el DataTable del objeto de la tabla poniendolo que sea igual al Datatable llenado desde el servicio
                    Obj_SOLICITUD_VIAJE_DAL.Obj_DT = dt;
                    sMsjError = string.Empty;
                    Obj_SOLICITUD_VIAJE_DAL.Bln_BEstado = true;
                }
                else
                {
                    Obj_SOLICITUD_VIAJE_DAL.Bln_BEstado = false;
                }
            }
            catch (Exception ex)
            {
                sMsjError = ex.Message.ToString();
            }
        }

        public void Eliminar_SOLICITUD_VIAJE(ref Cls_TBL_SOLICITUD_VIAJE_DAL SOLICITUD_VIAJE)
        {

            string sMsjError = string.Empty;
            try
            {
                svc_Cat_Mat.LetsGo_InterfaceClient Obj_svc_LetsGo = new svc_Cat_Mat.LetsGo_InterfaceClient();

                string sNombreSP = "[SCH_SERVICIOS].[sp_delete_TBL_SOLICITUD_VIAJE]";

                DataTable dt_Parametros = new DataTable("PARAMETROS");

                dt_Parametros.Columns.Add("NombreParametro");
                dt_Parametros.Columns.Add("TipoParametros");
                dt_Parametros.Columns.Add("ValorParametro");

                dt_Parametros.Rows.Add("@ID_Solicitud_Viaje", "8", SOLICITUD_VIAJE.SID_Solicitud_Viaje);

                Obj_svc_LetsGo.Elimina_Datos(sNombreSP, dt_Parametros, ref sMsjError);

                if (sMsjError == string.Empty)
                {
                    sMsjError = string.Empty;
                    SOLICITUD_VIAJE.Bln_BEstado = true;
                }
                else
                {
                    SOLICITUD_VIAJE.Bln_BEstado = false;
                }
            }
            catch (Exception ex)
            {
                sMsjError = ex.Message.ToString();
            }
        }

        public void Insertar_SOLICITUD_VIAJE(ref Cls_TBL_SOLICITUD_VIAJE_DAL SOLICITUD_VIAJE)
        {
            string sMsjError = string.Empty;
            try
            {

                svc_Cat_Mat.LetsGo_InterfaceClient Obj_svc_LetsGo = new svc_Cat_Mat.LetsGo_InterfaceClient();

                string sNombreSP = "[SCH_SERVICIOS].[sp_insert_TBL_SOLICITUD_VIAJE]";

                DataTable dt_Parametros = new DataTable("PARAMETROS");
                dt_Parametros.Columns.Add("NombreParametro");
                dt_Parametros.Columns.Add("TipoParametros");
                dt_Parametros.Columns.Add("ValorParametro");

                //   ( NombreVariable de la BD ,  el numero del SqlDbType del NonQuery, valor de la variable)
                dt_Parametros.Rows.Add("@ID_Solicitud_Viaje", "10", SOLICITUD_VIAJE.SID_Solicitud_Viaje);
                dt_Parametros.Rows.Add("@ID_Cliente", "1", SOLICITUD_VIAJE.IID_Cliente);
                dt_Parametros.Rows.Add("@ID_Tipo_Vehiculo", "8", SOLICITUD_VIAJE.BID_Tipo_Vehiculo);
                dt_Parametros.Rows.Add("@Ruta_Inicial", "2", SOLICITUD_VIAJE.SRuta_Inicial);
                dt_Parametros.Rows.Add("@Ruta_Final", "2", SOLICITUD_VIAJE.SRuta_Final);
                dt_Parametros.Rows.Add("@Cantidad_Km", "6", SOLICITUD_VIAJE.DCantidad_Km);
                dt_Parametros.Rows.Add("@Costo_Inicial", "11", SOLICITUD_VIAJE.DCosto_Inicial);


                Obj_svc_LetsGo.Insertar_DatosSinIdentity(sNombreSP, dt_Parametros, ref sMsjError);

                if (sMsjError == string.Empty)
                {
                    sMsjError = string.Empty;
                    SOLICITUD_VIAJE.CAx = 'U';
                    SOLICITUD_VIAJE.Bln_BEstado = true;
                }
                else
                {
                    SOLICITUD_VIAJE.CAx = 'I';
                    SOLICITUD_VIAJE.Bln_BEstado = false;
                }

            }
            catch (Exception ex)
            {
                sMsjError = ex.Message.ToString();
            }
        }

        public void Modificar_SOLICITUD_VIAJE(ref Cls_TBL_SOLICITUD_VIAJE_DAL SOLICITUD_VIAJE)
        {
            string sMsjError = string.Empty;
            try
            {
                svc_Cat_Mat.LetsGo_InterfaceClient Obj_svc_LetsGo = new svc_Cat_Mat.LetsGo_InterfaceClient();

                string sNombreSP = "[SCH_SERVICIOS].[sp_update_TBL_SOLICITUD_VIAJE]";

                DataTable dt_Parametros = new DataTable("PARAMETROS");
                dt_Parametros.Columns.Add("NombreParametro");
                dt_Parametros.Columns.Add("TipoParametros");
                dt_Parametros.Columns.Add("ValorParametro");

                //   ( NombreVariable de la BD ,  el numero del SqlDbType del NonQuery, valor de la variable)
                dt_Parametros.Rows.Add("@ID_Solicitud_Viaje", "10", SOLICITUD_VIAJE.SID_Solicitud_Viaje);
                dt_Parametros.Rows.Add("@ID_Cliente", "1", SOLICITUD_VIAJE.IID_Cliente);
                dt_Parametros.Rows.Add("@ID_Tipo_Vehiculo", "8", SOLICITUD_VIAJE.BID_Tipo_Vehiculo);
                dt_Parametros.Rows.Add("@Ruta_Inicial", "2", SOLICITUD_VIAJE.SRuta_Inicial);
                dt_Parametros.Rows.Add("@Ruta_Final", "2", SOLICITUD_VIAJE.SRuta_Final);
                dt_Parametros.Rows.Add("@Cantidad_Km", "6", SOLICITUD_VIAJE.DCantidad_Km);
                dt_Parametros.Rows.Add("@Costo_Inicial", "11", SOLICITUD_VIAJE.DCosto_Inicial);

                Obj_svc_LetsGo.Modifica_Datos(sNombreSP, dt_Parametros, ref sMsjError);

                if (sMsjError == string.Empty)
                {
                    sMsjError = string.Empty;
                    SOLICITUD_VIAJE.CAx = 'U';
                    SOLICITUD_VIAJE.Bln_BEstado = true;
                }
                else
                {
                    SOLICITUD_VIAJE.CAx = 'U';
                    SOLICITUD_VIAJE.Bln_BEstado = false;

                }

            }
            catch (Exception ex)
            {
                sMsjError = ex.Message.ToString();
            }
        }

        public void Filtrar_SOLICITUD_VIAJE(ref Cls_TBL_SOLICITUD_VIAJE_DAL SOLICITUD_VIAJE, string sFiltro)
        {
            string sMsjError = string.Empty;

            // con esto se crea la conexion al servicio 
            svc_Cat_Mat.LetsGo_InterfaceClient Obj_svc_LetsGo = new svc_Cat_Mat.LetsGo_InterfaceClient();

            // el nombre del Store procedure
            //string sNombreSP = "[SCH_CUENTA].[sp_filtro_TBL_TIPO_TARJETA]";
            string sNombreSP = "[SCH_SERVICIOS].[sp_search_TBL_SOLICITUD_VIAJE]";


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
                SOLICITUD_VIAJE.Obj_DT = dt;
                sMsjError = string.Empty;
                SOLICITUD_VIAJE.Bln_BEstado = true;
            }
            else
            {
                SOLICITUD_VIAJE.Bln_BEstado = false;
            }

        }

    }
}
