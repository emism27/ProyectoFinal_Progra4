using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL_LetsGO.Catalogos_Mantenimientos;
using System.Data;

namespace BLL_LetsGO.Catalogos_Mantenimientos
{
    public class Cls_TBL_CONDUCTOR_BLL
    {

        public void Listar_Conductor(ref Cls_TBL_CONDUCTOR_DAL Obj_CONDUCTOR_DAL)
        {
            //Variable de mensaje de error

            string sMsjerror = string.Empty;

            try
            {

                //Conexión al servicio
                svc_Cat_Mat.LetsGo_InterfaceClient Obj_svc_LetsGo = new svc_Cat_Mat.LetsGo_InterfaceClient();

                string sNombreSP = "[SCH_CUENTA].[sp_select_TBL_CONDUCTOR]";

                //Se crea DataTable para ser llenado
                DataTable dt = new DataTable();


                //Se llena el DataTable
                dt = Obj_svc_LetsGo.ListarDatos(sNombreSP, ref sMsjerror);

                if (sMsjerror == string.Empty)
                {
                    Obj_CONDUCTOR_DAL.Obj_DT = dt;
                    sMsjerror = string.Empty;
                }

            }
            catch (Exception ex)
            {

                sMsjerror = ex.Message.ToString();
            }
        }
    }
}
