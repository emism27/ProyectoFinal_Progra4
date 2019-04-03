using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LetsGo_DAL.Catalogos_Mantenimientos;
using LetsGo_BLL.BD;
using LetsGo_DAL.BD;

namespace LetsGo_BLL.Catalogos_Mantenimientos
{
    public class Cls_Tipo_Vehiculo_BLL
    {
        public void Listar_Tipo_Vehiculo()
        {
            try
            {
                cls_BD_BLL Obj_BD_BLL = new cls_BD_BLL();
                cls_BD_DAL Obj_BD_DAL = new cls_BD_DAL();

                Obj_BD_DAL.SNomb_Sp = "sp_Listar_Tipo_Vehiculo";
                Obj_BD_DAL.SNombTabla = "T_TIPO_VEHICULO";

                Obj_BD_BLL.ExecuteDataAdapter("a", "b", "@parametro", "c");

                if (Obj_BD_DAL.SNomb_Sp == string.Empty)
                {
                    Obj_Tipo_Vehiculo_DAL.Obj_DT = Obj_BD_DAL.Obj_DS.Tables[0];
                    Obj_Tipo_Vehiculo_DAL.sMsjError = string.Empty;
                }
                else
                {
                    Obj_Tipo_Vehiculo_DAL.sMsjError = Obj_BD_DAL.sMsj_Error;
                }

            }
            catch (Exception ex)
            {
                Obj_Tipo_Vehiculo_DAL.sMsjError = ex.Message.ToString();
            }
        }

        public void Filtrar_Tipo_Vehiculo(ref Cls_Tipo_Vehiculo_DAL Obj_Tipo_Vehiculo_DAL, string sFiltro)
        {
            try
            {
                cls_BD_BLL Obj_BD_BLL = new cls_BD_BLL();
                cls_BD_DAL Obj_BD_DAL = new cls_BD_DAL();

                Obj_BD_DAL.SNomb_Sp = "sp_Listar_Tipo_Vehiculo";
                Obj_BD_DAL.SNombTabla = "T_TIPO_VEHICULO";

                Obj_BD_BLL.Crear_DT_Parametros(ref Obj_BD_DAL);

                Obj_BD_DAL.dt_Parametros.Rows.Add("@Filtro", "2", sFiltro);

                Obj_BD_BLL.ExecuteDataAdapter("a", "b", "@parametro", "c");

                if (Obj_BD_DAL.sMsj_Error == string.Empty)
                {
                    Obj_Tipo_Vehiculo_DAL.Obj_DT = Obj_BD_DAL.Obj_DS.Tables[0];
                    Obj_Tipo_Vehiculo_DAL.sMsjError = string.Empty;
                }
                else
                {
                    Obj_Tipo_Vehiculo_DAL.sMsjError = Obj_BD_DAL.sMsj_Error;
                }
            }
            catch (Exception ex)
            {
                Obj_Tipo_Vehiculo_DAL.sMsjError = ex.Message.ToString();
            }
        }
    }
}
