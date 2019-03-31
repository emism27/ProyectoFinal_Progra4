using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Data; // se utiliza para DataTable, DataSet, CommandType y SqlDbType


namespace SVC_LetsGo.INTERFACE
{
    [ServiceContract]
    public interface ILetsGo_Interface
    {
        [OperationContract]
        DataTable ListarDatos(string sNombreSP, ref string sMsjError);

        [OperationContract]
        DataTable FiltrarDatos(string sNombreSP, string sNombreParametro, SqlDbType DbType, string sValorParametro, ref string sMsjError);

    }
}
