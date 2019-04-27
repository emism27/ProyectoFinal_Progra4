using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL_LetsGO.Catalogos_Mantenimientos; // Importantes estas referencias para hacer el llamado
using System.Data;

namespace BLL_LetsGO.Catalogos_Mantenimientos
{
    public class Cls_TBL_EMPRESA_BLL
    {
        public void Listar_Empresa(ref Cls_TBL_EMPRESA_DAL Obj_Empresa_DAL)
        {
            // se crea la variable error para pasarlo por el servicio
            string sMsjError = string.Empty;

            try
            {
                // con esto se crea la conexion al servicio 
                svc_Cat_Mat.LetsGo_InterfaceClient Obj_svc_LetsGo = new svc_Cat_Mat.LetsGo_InterfaceClient();
                //svc_Cat_Mat.LetsGo_InterfaceClient Obj_svc_LetsGo = new svc_Cat_Mat.LetsGo_InterfaceClient();

                // el nombre del Store procedure
                string sNombreSP = "[SCH_EMPRESA].[sp_select_TBL_EMPRESA]";

                // se crea un datatable para que sea llenado
                DataTable dt = new DataTable();

                // se llena el DataTable llamando al servicio del WCF del contract
                dt = Obj_svc_LetsGo.ListarDatos(sNombreSP, ref sMsjError);

                if (sMsjError == string.Empty)
                {
                    // se llena el DataTable del objeto de la tabla poniendolo que sea igual al Datatable llenado desde el servicio
                    Obj_Empresa_DAL.Obj_DT = dt;
                    sMsjError = string.Empty;
                    Obj_Empresa_DAL.Bln_BEstado = true;
                }
                else
                {
                    Obj_Empresa_DAL.Bln_BEstado = false;
                }

            }
            catch (Exception ex)
            {
                sMsjError = ex.Message.ToString();
            }
        }

        public void Eliminar_Empresa(ref Cls_TBL_EMPRESA_DAL Obj_EMPRESA_DAL)
        {

            string sMsjError = string.Empty;
            try
            {
                svc_Cat_Mat.LetsGo_InterfaceClient Obj_svc_LetsGo = new svc_Cat_Mat.LetsGo_InterfaceClient();

                string sNombreSP = "[SCH_EMPRESA].[sp_delete_TBL_EMPRESA]";

                DataTable dt_Parametros = new DataTable("PARAMETROS");

                dt_Parametros.Columns.Add("NombreParametro");
                dt_Parametros.Columns.Add("TipoParametros");
                dt_Parametros.Columns.Add("ValorParametro");

                dt_Parametros.Rows.Add("@ID_Empresa", "8", Obj_EMPRESA_DAL.IID_Cedula_Juridica);

                Obj_svc_LetsGo.Elimina_Datos(sNombreSP, dt_Parametros, ref sMsjError);

                if (sMsjError == string.Empty)
                {
                    sMsjError = string.Empty;
                    Obj_EMPRESA_DAL.Bln_BEstado = true;
                }
                else
                {
                    Obj_EMPRESA_DAL.Bln_BEstado = false;
                }
            }
            catch (Exception ex)
            {
                sMsjError = ex.Message.ToString();
            }
        }

        public void Insertar_Empresa(ref Cls_TBL_EMPRESA_DAL Obj_EMPRESA_DAL)
        {
            string sMsjError = string.Empty;
            try
            {

                svc_Cat_Mat.LetsGo_InterfaceClient Obj_svc_LetsGo = new svc_Cat_Mat.LetsGo_InterfaceClient();

                string sNombreSP = "[SCH_EMPRESA].[sp_insert_TBL_EMPRESA]";

                DataTable dt_Parametros = new DataTable("PARAMETROS");
                dt_Parametros.Columns.Add("NombreParametro");
                dt_Parametros.Columns.Add("TipoParametros");
                dt_Parametros.Columns.Add("ValorParametro");

                //   ( NombreVariable de la BD ,  el numero del SqlDbType del NonQuery, valor de la variable)
                dt_Parametros.Rows.Add("@ID_Empresa", "8", Obj_EMPRESA_DAL.IID_Cedula_Juridica);
                dt_Parametros.Rows.Add("@Nombre", "2", Obj_EMPRESA_DAL.SNombre_Empresa);
                dt_Parametros.Rows.Add("@Direccion", "2", Obj_EMPRESA_DAL.SDireccion);
                dt_Parametros.Rows.Add("@Sitio", "2", Obj_EMPRESA_DAL.SSitio_Web);
                dt_Parametros.Rows.Add("@Telefono", "2", Obj_EMPRESA_DAL.ITelefono);
                dt_Parametros.Rows.Add("@Correo", "2", Obj_EMPRESA_DAL.SEmail);

                Obj_svc_LetsGo.Insertar_DatosSinIdentity(sNombreSP, dt_Parametros, ref sMsjError);

                if (sMsjError == string.Empty)
                {
                    sMsjError = string.Empty;
                    Obj_EMPRESA_DAL.CAx = 'U';
                    Obj_EMPRESA_DAL.Bln_BEstado = true;
                }
                else
                {
                    Obj_EMPRESA_DAL.CAx = 'I';
                    Obj_EMPRESA_DAL.Bln_BEstado = false;
                }

            }
            catch (Exception ex)
            {
                sMsjError = ex.Message.ToString();
            }
        }

        public void Modificar_Empresa(ref Cls_TBL_EMPRESA_DAL Obj_EMPRESA_DAL)
        {
            string sMsjError = string.Empty;
            try
            {
                svc_Cat_Mat.LetsGo_InterfaceClient Obj_svc_LetsGo = new svc_Cat_Mat.LetsGo_InterfaceClient();

                string sNombreSP = "[SCH_EMPRESA].[sp_update_TBL_EMPRESA]";

                DataTable dt_Parametros = new DataTable("PARAMETROS");
                dt_Parametros.Columns.Add("NombreParametro");
                dt_Parametros.Columns.Add("TipoParametros");
                dt_Parametros.Columns.Add("ValorParametro");

                //   ( NombreVariable de la BD ,  el numero del SqlDbType del NonQuery, valor de la variable)
                dt_Parametros.Rows.Add("@ID_Empresa", "8", Obj_EMPRESA_DAL.IID_Cedula_Juridica);
                dt_Parametros.Rows.Add("@Nombre", "2", Obj_EMPRESA_DAL.SNombre_Empresa);
                dt_Parametros.Rows.Add("@Direccion", "2", Obj_EMPRESA_DAL.SDireccion);
                dt_Parametros.Rows.Add("@Sitio", "2", Obj_EMPRESA_DAL.SSitio_Web);
                dt_Parametros.Rows.Add("@Telefono", "2", Obj_EMPRESA_DAL.ITelefono);
                dt_Parametros.Rows.Add("@Correo", "2", Obj_EMPRESA_DAL.SEmail);

                Obj_svc_LetsGo.Modifica_Datos(sNombreSP, dt_Parametros, ref sMsjError);

                if (sMsjError == string.Empty)
                {
                    sMsjError = string.Empty;
                    Obj_EMPRESA_DAL.CAx = 'U';
                    Obj_EMPRESA_DAL.Bln_BEstado = true;
                }
                else
                {
                    Obj_EMPRESA_DAL.CAx = 'U';
                    Obj_EMPRESA_DAL.Bln_BEstado = false;

                }

            }
            catch (Exception ex)
            {
                sMsjError = ex.Message.ToString();
            }
        }

        public void Filtrar_Empresa(ref Cls_TBL_EMPRESA_DAL Obj_EMPRESA_DAL, string sFiltro)
        {
            string sMsjError = string.Empty;

            // con esto se crea la conexion al servicio 
            svc_Cat_Mat.LetsGo_InterfaceClient Obj_svc_LetsGo = new svc_Cat_Mat.LetsGo_InterfaceClient();

            // el nombre del Store procedure
            //string sNombreSP = "[SCH_CUENTA].[sp_filtro_TBL_TIPO_TARJETA]";
            string sNombreSP = "[SCH_EMPRESA].[sp_search_TBL_EMPRESA]";


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
                Obj_EMPRESA_DAL.Obj_DT = dt;
                sMsjError = string.Empty;
                Obj_EMPRESA_DAL.Bln_BEstado = true;
            }
            else
            {
                Obj_EMPRESA_DAL.Bln_BEstado = false;
            }

        }
    }
}
