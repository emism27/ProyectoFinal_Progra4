using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL_LetsGO.Catalogos_Mantenimientos;
using System.Data;

namespace BLL_LetsGO.Catalogos_Mantenimientos
{
    public class Cls_TBL_MARCA_BLL
    {
        // Metodo para listar los datos
        public void Listar_Marca(ref Cls_TBL_MARCA_DAL Obj_Marca_DAL)
        {
            // se crea la variable error para pasarlo por el servicio
            string sMsjError = string.Empty;

            try
            {
                // con esto se crea la conexion al servicio 
                svc_Cat_Mat.LetsGo_InterfaceClient Obj_svc_LetsGo = new svc_Cat_Mat.LetsGo_InterfaceClient();

                // el nombre del Store procedure
                string sNombreSP = "[SCH_CUENTA].[sp_select_TBL_MARCA]";

                // se crea un datatable para que sea llenado
                DataTable dt = new DataTable();

                // se llena el DataTable llamando al servicio del WCF del contract
                dt = Obj_svc_LetsGo.ListarDatos(sNombreSP, ref sMsjError);

                if (sMsjError == string.Empty)
                {
                    // se llena el DataTable del objeto de la tabla poniendolo que sea igual al Datatable llenado desde el servicio
                    Obj_Marca_DAL.Obj_DT = dt;
                    sMsjError = string.Empty;
                    Obj_Marca_DAL.Bln_BEstado = true;
                }
                else
                {
                    Obj_Marca_DAL.Bln_BEstado = false;
                }
            }
            catch (Exception ex)
            {
                sMsjError = ex.Message.ToString();
            }
        }

        public void Eliminar_Marca(ref Cls_TBL_MARCA_DAL Obj_Marca_DAL)
        {

            string sMsjError = string.Empty;
            try
            {
                svc_Cat_Mat.LetsGo_InterfaceClient Obj_svc_LetsGo = new svc_Cat_Mat.LetsGo_InterfaceClient();

                string sNombreSP = "[SCH_CUENTA].[sp_delete_TBL_MARCA]";

                DataTable dt_Parametros = new DataTable("PARAMETROS");

                dt_Parametros.Columns.Add("NombreParametro");
                dt_Parametros.Columns.Add("TipoParametros");
                dt_Parametros.Columns.Add("ValorParametro");

                dt_Parametros.Rows.Add("@ID_Marca", "8", Obj_Marca_DAL.BID_Marca);

                Obj_svc_LetsGo.Elimina_Datos(sNombreSP, dt_Parametros, ref sMsjError);

                if (sMsjError == string.Empty)
                {
                    sMsjError = string.Empty;
                    Obj_Marca_DAL.Bln_BEstado = true;
                }
                else
                {
                    Obj_Marca_DAL.Bln_BEstado = false;
                }
            }
            catch (Exception ex)
            {
                sMsjError = ex.Message.ToString();
            }
        }

        public void Insertar_Marca(ref Cls_TBL_MARCA_DAL Obj_Marca_DAL)
        {
            string sMsjError = string.Empty;
            try
            {

                svc_Cat_Mat.LetsGo_InterfaceClient Obj_svc_LetsGo = new svc_Cat_Mat.LetsGo_InterfaceClient();

                string sNombreSP = "[SCH_CUENTA].[sp_insert_TBL_MARCA]";

                DataTable dt_Parametros = new DataTable("PARAMETROS");
                dt_Parametros.Columns.Add("NombreParametro");
                dt_Parametros.Columns.Add("TipoParametros");
                dt_Parametros.Columns.Add("ValorParametro");

                //   ( NombreVariable de la BD ,  el numero del SqlDbType del NonQuery, valor de la variable)
                dt_Parametros.Rows.Add("@ID_Marca", "8", Obj_Marca_DAL.BID_Marca);
                dt_Parametros.Rows.Add("@Descripcion", "2", Obj_Marca_DAL.SDescripcion);

                Obj_svc_LetsGo.Insertar_DatosSinIdentity(sNombreSP, dt_Parametros, ref sMsjError);

                if (sMsjError == string.Empty)
                {
                    sMsjError = string.Empty;
                    Obj_Marca_DAL.CAx = 'U';
                    Obj_Marca_DAL.Bln_BEstado = true;
                }
                else
                {
                    Obj_Marca_DAL.CAx = 'I';
                    Obj_Marca_DAL.Bln_BEstado = false;
                }

            }
            catch (Exception ex)
            {
                sMsjError = ex.Message.ToString();
            }
        }

        public void Modificar_Marca(ref Cls_TBL_MARCA_DAL Obj_Marca_DAL)
        {
            string sMsjError = string.Empty;
            try
            {
                svc_Cat_Mat.LetsGo_InterfaceClient Obj_svc_LetsGo = new svc_Cat_Mat.LetsGo_InterfaceClient();

                string sNombreSP = "[SCH_CUENTA].[sp_update_TBL_MARCA]";

                DataTable dt_Parametros = new DataTable("PARAMETROS");
                dt_Parametros.Columns.Add("NombreParametro");
                dt_Parametros.Columns.Add("TipoParametros");
                dt_Parametros.Columns.Add("ValorParametro");

                //   ( NombreVariable de la BD ,  el numero del SqlDbType del NonQuery, valor de la variable)
                dt_Parametros.Rows.Add("@ID_Marca", "8", Obj_Marca_DAL.BID_Marca);
                dt_Parametros.Rows.Add("@Descripcion", "2", Obj_Marca_DAL.SDescripcion);

                Obj_svc_LetsGo.Modifica_Datos(sNombreSP, dt_Parametros, ref sMsjError);

                if (sMsjError == string.Empty)
                {
                    sMsjError = string.Empty;
                    Obj_Marca_DAL.CAx = 'U';
                    Obj_Marca_DAL.Bln_BEstado = true;
                }
                else
                {
                    Obj_Marca_DAL.CAx = 'U';
                    Obj_Marca_DAL.Bln_BEstado = false;

                }

            }
            catch (Exception ex)
            {
                sMsjError = ex.Message.ToString();
            }
        }

        public void Filtrar_Marca(ref Cls_TBL_MARCA_DAL Obj_Marca_DAL, string sFiltro)
        {
            string sMsjError = string.Empty;

            // con esto se crea la conexion al servicio 
            svc_Cat_Mat.LetsGo_InterfaceClient Obj_svc_LetsGo = new svc_Cat_Mat.LetsGo_InterfaceClient();

            // el nombre del Store procedure
            //string sNombreSP = "[SCH_CUENTA].[sp_filtro_TBL_TIPO_TARJETA]";
            string sNombreSP = "[SCH_CUENTA].[sp_search_TBL_TIPO_TARJETA]";


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
                Obj_Marca_DAL.Obj_DT = dt;
                sMsjError = string.Empty;
                Obj_Marca_DAL.Bln_BEstado = true;
            }
            else
            {
                Obj_Marca_DAL.Bln_BEstado = false;
            }

        }

    }
}
