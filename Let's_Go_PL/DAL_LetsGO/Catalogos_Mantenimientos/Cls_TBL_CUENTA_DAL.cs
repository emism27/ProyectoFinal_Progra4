using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_LetsGO.Catalogos_Mantenimientos
{
    public class Cls_TBL_CUENTA_DAL
    {
        #region Variables
        public System.Data.DataSet DS = new System.Data.DataSet();
        private int _iID_Cuenta; private string _sNombre; private string _sApellido_1; private string _sApellido_2; private string _sPass; private int _iTelefono; private string _sEmail; private byte _bID_Pregunta_Seguridad; private string _sRespuesta_Seguridad;
        #endregion
    }
}
