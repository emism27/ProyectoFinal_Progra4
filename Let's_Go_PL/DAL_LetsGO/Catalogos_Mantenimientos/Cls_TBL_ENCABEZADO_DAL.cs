using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL_LetsGO.Catalogos_Mantenimientos
{
    public class Cls_TBL_ENCABEZADO_DAL
    {
        #region Variables
        public System.Data.DataSet DS = new System.Data.DataSet();
        private int _iID_Encabezado; private DateTime _DFecha; private int _iID_Viaje;
        public DataTable Obj_DT = new DataTable();
        #endregion
    }
}
