using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.SqlClient; // se utiliza para el SqlCommand, SqlDataAdapter, SqlConnection
using System.Data;

namespace LetsGo_DAL.BD
{
    public class cls_BD_DAL
    {
        private string _smsj_error, _scadena_conexion, _sNombTabla, _sNomb_Sp;
        public DataTable dt_Parametros = new DataTable("PARAMETROS");

        public SqlCommand obj_sql_cmd;
        public SqlDataAdapter obj_sql_adap;
        public SqlConnection obj_sql_cnx;
        public DataSet Obj_DS = new DataSet();

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

        public string SNombTabla
        {
            get
            {
                return _sNombTabla;
            }

            set
            {
                _sNombTabla = value;
            }
        }

        public string SNomb_Sp
        {
            get
            {
                return _sNomb_Sp;
            }

            set
            {
                _sNomb_Sp = value;
            }
        }
    }
}
