using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL_LetsGO.Catalogos_Mantenimientos;
using System.Data;
//using BLL_LetsGO.svc_Cat_y_Mat;

namespace BLL_LetsGO.Catalogos_Mantenimientos
{
    public class Cls_TBL_CLIENTE_BLL
    {

        //LetsGo_InterfaceClient client = new LetsGo_InterfaceClient();

        //svc_Cat_y_Mat.ListarDatosRequest


        // Metodo para listar los datos
        public void Listar_Cliente(ref Cls_TBL_CLIENTE_DAL Obj_CLIENTE_DAL)
        {
            // se crea la variable error para pasarlo por el servicio
            string sMsjError = string.Empty;

            try
            {
                // con esto se crea la conexion al servicio 
                svc_Cat_Mat.LetsGo_InterfaceClient Obj_svc_LetsGo = new svc_Cat_Mat.LetsGo_InterfaceClient();
                //svc_Cat_Mat.LetsGo_InterfaceClient Obj_svc_LetsGo = new svc_Cat_Mat.LetsGo_InterfaceClient();

                // el nombre del Store procedure
                string sNombreSP = "[SCH_CUENTA].[sp_select_TBL_CLIENTE]";

                // se crea un datatable para que sea llenado
                DataTable dt = new DataTable();

                // se llena el DataTable llamando al servicio del WCF del contract
                dt = Obj_svc_LetsGo.ListarDatos(sNombreSP, ref sMsjError);

                if (sMsjError == string.Empty)
                {
                    // se llena el DataTable del objeto de la tabla poniendolo que sea igual al Datatable llenado desde el servicio
                    Obj_CLIENTE_DAL.Obj_DT = dt;
                    sMsjError = string.Empty;
                }
                else
                {
                }

            }
            catch (Exception ex)
            {
                sMsjError = ex.Message.ToString();
            }
        }














    }
}
