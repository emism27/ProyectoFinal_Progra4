using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL_LetsGO.Catalogos_Mantenimientos
{
    public class Cls_TBL_RATING_DAL
    {
        #region Variables
        public System.Data.DataSet DS = new System.Data.DataSet();
        private byte _bID_Rating; private byte _bRating; private int _iID_Viaje;
        private char _cAx;
        private bool bln_BEstado; // TRUE = exitoso  /  FALSE = fallido

        public DataTable Obj_DT = new DataTable();

        public byte BID_Rating
        {
            get
            {
                return _bID_Rating;
            }

            set
            {
                _bID_Rating = value;
            }
        }

        public byte BRating
        {
            get
            {
                return _bRating;
            }

            set
            {
                _bRating = value;
            }
        }

        public int IID_Viaje
        {
            get
            {
                return _iID_Viaje;
            }

            set
            {
                _iID_Viaje = value;
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
            get
            {
                return bln_BEstado;
            }

            set
            {
                bln_BEstado = value;
            }
        }

        #endregion
    }
}
