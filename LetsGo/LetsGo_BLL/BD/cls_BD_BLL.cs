using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.SqlClient; // se utiliza para el SqlCommand, SqlDataAdapter, SqlConnection
using System.Data; // se utiliza para DataTable, DataSet, CommandType y SqlDbType
using System.Configuration; // se utiliza para el ConfigurationManager
using LetsGo_DAL.BD; // referencia a la BD DAL

namespace LetsGo_BLL.BD
{
    public class cls_BD_BLL
    {
        public void CrearConexion(ref cls_BD_DAL Obj_BD_DAL)
        {
            try
            {
                Obj_BD_DAL.sCadena_Conexion = ConfigurationManager.ConnectionStrings["Windows_AUT"].ConnectionString;
                Obj_BD_DAL.obj_sql_cnx = new SqlConnection(Obj_BD_DAL.sCadena_Conexion);
                Obj_BD_DAL.sMsj_Error = string.Empty;
            }
            catch (Exception ex)
            {
                Obj_BD_DAL.sMsj_Error = ex.Message.ToString();
                Obj_BD_DAL.obj_sql_cnx = null;
                Obj_BD_DAL.sCadena_Conexion = string.Empty;
            }
        }

        public DataTable ExecuteDataAdapter(string sNombre_SP, string sNombreParametro,
                                             SqlDbType DbType, string sValorParametro,
                                             ref string sMsjError)
        {
            cls_BD_DAL obj_BD_DAL = new cls_BD_DAL();

            try
            {
                obj_BD_DAL.sCadena_Conexion = ConfigurationManager.ConnectionStrings[1].ToString();

                obj_BD_DAL.obj_sql_cnx = new SqlConnection(obj_BD_DAL.sCadena_Conexion);
                if (obj_BD_DAL.obj_sql_cnx.State == ConnectionState.Closed)
                {
                    obj_BD_DAL.obj_sql_cnx.Open();
                }

                obj_BD_DAL.obj_sql_adap = new SqlDataAdapter(sNombre_SP, obj_BD_DAL.obj_sql_cnx);


                obj_BD_DAL.obj_sql_adap.SelectCommand.CommandType = CommandType.StoredProcedure;

                if (sValorParametro != String.Empty)
                {
                    obj_BD_DAL.obj_sql_adap.SelectCommand.Parameters.Add(sNombreParametro, DbType).Value = sValorParametro;
                }

                DataSet DS = new DataSet();

                obj_BD_DAL.obj_sql_adap.Fill(DS);

                sMsjError = String.Empty;

                return DS.Tables[0];
            }
            catch (Exception ex)
            {

                sMsjError = ex.Message.ToString();
                return null;
            }
            finally
            {
                if (obj_BD_DAL.obj_sql_cnx != null)
                {
                    if (obj_BD_DAL.obj_sql_cnx.State == ConnectionState.Open)
                    {
                        obj_BD_DAL.obj_sql_cnx.Close();
                    }

                    obj_BD_DAL.obj_sql_cnx.Dispose();
                }
            }
        }            

    }

}
