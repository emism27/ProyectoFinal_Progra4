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
        private char _cAx;
        private bool bln_BEstado; // TRUE = exitoso  /  FALSE = fallido
        #endregion

        #region Variables publicas
        public byte BID_Tipo_Tarjeta
        {
            get
            {
                return _bID_Tipo_Tarjeta;
            }

            set
            {
                _bID_Tipo_Tarjeta = value;
            }
        }

        public string SDescripcion
        {
            get
            {
                return _sDescripcion;
            }

            set
            {
                _sDescripcion = value;
            }
        }

        public char CAx
        {
            get
            {
                return _cAx;
            }

            set
            {
                _cAx = value;
            }
        }


        public bool Bln_BEstado
        {
            get { return bln_BEstado; }
            set { bln_BEstado = value; }
        }

        #endregion
    }
}
