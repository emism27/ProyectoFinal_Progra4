using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_LetsGO.Catalogos_Mantenimientos
{
    public class Cls_TBL_SOLICITUD_VIAJE_DAL
    {
        #region Variables
        public System.Data.DataSet DS = new System.Data.DataSet();
        private short _sID_Solicitud_Viaje; private int _iID_Cliente; private byte _bID_Tipo_Vehiculo; private string _sRuta_Inicial; private string _sRuta_Final; private decimal _dCantidad_Km; private decimal _dCosto_Inicial;
        #endregion
    }
}
