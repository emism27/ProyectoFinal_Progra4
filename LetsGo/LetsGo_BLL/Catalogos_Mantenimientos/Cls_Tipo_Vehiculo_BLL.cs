using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LetsGo_DAL.Catalogos_Mantenimientos;
using LetsGo_BLL.BD;
using LetsGo_DAL.BD;
using System.Data;

namespace LetsGo_BLL.Catalogos_Mantenimientos
{
    //public class Cls_Tipo_Vehiculo_BLL
    //{

    //    public DataTable Listar_Tipo_Vehiculo(ref string sMsjError)
    //    {
    //        cls_BD_BLL Obj_BD_BLL = new cls_BD_BLL();
    //        return Obj_BD_BLL.ExecuteDataAdapter("sp_Listar_Departamentos",string.Empty, SqlDbType.VarChar, string.Empty, ref sMsjError);
    //    }

    //    public DataTable Filtrar_Tipo_Vehiculo(string sValorParametro, ref string sMsjError)
    //    {
    //        cls_BD_BLL Obj_BD_BLL = new cls_BD_BLL();
    //        return Obj_BD_BLL.ExecuteDataAdapter("sp_Filtar_Departamentos", "@Descripcion", SqlDbType.VarChar, sValorParametro, ref sMsjError);
    //    }

       

        //public void Listar_Tipo_Vehiculo()
        //{
        //    try
        //    {
        //        cls_BD_BLL Obj_BD_BLL = new cls_BD_BLL();
        //        cls_BD_DAL Obj_BD_DAL = new cls_BD_DAL();

        //        Obj_BD_DAL.SNomb_Sp = "sp_Listar_Tipo_Vehiculo";
        //        Obj_BD_DAL.SNombTabla = "T_TIPO_VEHICULO";

        //        Obj_BD_BLL.ExecuteDataAdapter("a", "b", "@parametro", "c");

        //        if (Obj_BD_DAL.SNomb_Sp == string.Empty)
        //        {
        //            Obj_Tipo_Vehiculo_DAL.Obj_DT = Obj_BD_DAL.Obj_DS.Tables[0];
        //            Obj_Tipo_Vehiculo_DAL.sMsjError = string.Empty;
        //        }
        //        else
        //        {
        //            Obj_Tipo_Vehiculo_DAL.sMsjError = Obj_BD_DAL.sMsj_Error;
        //        }

        //    }
        //    catch (Exception ex)
        //    {
        //        Obj_Tipo_Vehiculo_DAL.sMsjError = ex.Message.ToString();
        //    }
        //}

        //public void Filtrar_Tipo_Vehiculo(ref Cls_Tipo_Vehiculo_DAL Obj_Tipo_Vehiculo_DAL, string sFiltro)
        //{
        //    try
        //    {
        //        cls_BD_BLL Obj_BD_BLL = new cls_BD_BLL();
        //        cls_BD_DAL Obj_BD_DAL = new cls_BD_DAL();

        //        Obj_BD_DAL.SNomb_Sp = "sp_Listar_Tipo_Vehiculo";
        //        Obj_BD_DAL.SNombTabla = "T_TIPO_VEHICULO";

        //        Obj_BD_BLL.Crear_DT_Parametros(ref Obj_BD_DAL);

        //        Obj_BD_DAL.dt_Parametros.Rows.Add("@Filtro", "2", sFiltro);

        //        Obj_BD_BLL.ExecuteDataAdapter("a", "b", "@parametro", "c");

        //        if (Obj_BD_DAL.sMsj_Error == string.Empty)
        //        {
        //            Obj_Tipo_Vehiculo_DAL.Obj_DT = Obj_BD_DAL.Obj_DS.Tables[0];
        //            Obj_Tipo_Vehiculo_DAL.sMsjError = string.Empty;
        //        }
        //        else
        //        {
        //            Obj_Tipo_Vehiculo_DAL.sMsjError = Obj_BD_DAL.sMsj_Error;
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        Obj_Tipo_Vehiculo_DAL.sMsjError = ex.Message.ToString();
        //    }
        //}
    }
}
