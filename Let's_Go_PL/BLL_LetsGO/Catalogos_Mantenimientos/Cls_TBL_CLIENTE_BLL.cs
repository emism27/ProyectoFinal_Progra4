using BLL_LetsGO.svc_Cat_Mat;
using System.Data;

namespace BLL_LetsGO.Catalogos_Mantenimientos
{
    public class Cls_TBL_CLIENTE_BLL
    {

        public DataTable Listar()
        {
            LetsGo_InterfaceClient client = new LetsGo_InterfaceClient();
            string sMserror = string.Empty;
            return client.ListarDatos("[SCH_CUENTA].[sp_select_TBL_CLIENTE]", ref sMserror);

        }


       
        


    }
}
