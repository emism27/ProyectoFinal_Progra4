using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.SqlClient; // se utiliza para el SqlCommand, SqlDataAdapter, SqlConnection


namespace LetsGo_DAL.BD
{
    public class cls_BD_DAL
    {
        private string _smsj_error, _scadena_conexion;

        public SqlCommand obj_sql_cmd;
        public SqlDataAdapter obj_sql_adap;
        public SqlConnection obj_sql_cnx;

        public string sMsj_Error
        {
            get
            {
                return _smsj_error;
            }

            set
            {
                _smsj_error = value;
            }
        }

        public string sCadena_Conexion
        {
            get
            {
                return _scadena_conexion;
            }

            set
            {
                _scadena_conexion = value;
            }
        }
    }
}
