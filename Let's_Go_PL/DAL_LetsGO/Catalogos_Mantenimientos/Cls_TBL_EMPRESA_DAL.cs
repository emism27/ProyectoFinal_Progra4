using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_LetsGO.Catalogos_Mantenimientos
{
    public class Cls_TBL_EMPRESA_DAL
    {
        #region Variables
        public System.Data.DataSet DS = new System.Data.DataSet();
        private int _iID_Cedula_Juridica; private string _sNombre_Empresa; private int _iTelefono; private string _sSitio_Web; private string _sEmail; private string _sDireccion;
        public DataTable Obj_DT = new DataTable();
        #endregion

    }
}
