using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL_LetsGO.Catalogos_Mantenimientos
{
    public class Cls_TBL_TIPO_TARJETA_DAL
    {
        #region Variables
        public System.Data.DataSet DS = new System.Data.DataSet();
        private byte _bID_Tipo_Tarjeta; private string _sDescripcion;
        public DataTable Obj_DT = new DataTable();

        #endregion
    }
}
