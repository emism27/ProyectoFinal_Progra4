using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Data;
using LetsGo_DAL;
using LetsGo_BLL.BD;

namespace SVC_LetsGo.CONTRACT
{
    public class LetsGo_Contract : INTERFACE.ILetsGo_Interface
    {
        public DataTable ListarDatos(string sNombreSP, ref string sMsjError)
        {
            cls_BD_BLL Obj_BD_BLL = new cls_BD_BLL();

            return Obj_BD_BLL.ExecuteDataAdapter(sNombreSP, "",
                                                 SqlDbType.VarChar, "",
                                                 ref sMsjError);
        }

        public DataTable FiltrarDatos(string sNombreSP, string sNombreParametro, SqlDbType DbType, string sValorParametro, ref string sMsjError)
        {
            cls_BD_BLL Obj_BD_BLL = new cls_BD_BLL();

            return Obj_BD_BLL.ExecuteDataAdapter(sNombreSP, sNombreParametro,
                                                 DbType, sValorParametro,
                                                 ref sMsjError);
        }

        public bool Insertar_DatosSinIdentity(string sNombreSP, DataTable dtParametros, ref string sMsjError)
        {
            cls_BD_BLL Obj_BD_BLL = new cls_BD_BLL();

            return Obj_BD_BLL.ExecuteNonQuery(sNombreSP, dtParametros, ref sMsjError);

        }

        public string Insertar_DatosConIdentity(string sNombreSP, DataTable dtParametros,ref string sValorScalar, ref string sMsjError)
        {
            cls_BD_BLL Obj_BD_BLL = new cls_BD_BLL();

            return Obj_BD_BLL.ExecuteScalar(sNombreSP, dtParametros, ref sMsjError).ToString();
        }

        public bool Modifica_Datos(string sNombreSP, DataTable dtParametros, ref string sMsjError)
        {
            cls_BD_BLL Obj_BD_BLL = new cls_BD_BLL();

            return Obj_BD_BLL.ExecuteNonQuery(sNombreSP, dtParametros, ref sMsjError);

        }


        public bool Elimina_Datos(string sNombreSP, DataTable dtParametros, ref string sMsjError)
        {
            cls_BD_BLL Obj_BD_BLL = new cls_BD_BLL();

            return Obj_BD_BLL.ExecuteNonQuery(sNombreSP, dtParametros, ref sMsjError);

        }

    }
}
