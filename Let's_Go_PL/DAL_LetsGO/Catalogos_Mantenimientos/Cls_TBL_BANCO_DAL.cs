using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL_LetsGO.Catalogos_Mantenimientos
{
    public class Cls_TBL_BANCO_DAL
    {
        #region Variables
        public System.Data.DataSet DS = new System.Data.DataSet();
        private byte _bID_Banco; private string _sNombre_Banco;

        private char _cAx;
        private bool bln_BEstado; // TRUE = exitoso  /  FALSE = fallido

        public DataTable Obj_DT = new DataTable();
        #endregion


        #region Variables Publicas
        public byte BID_Banco
        {
            get
            {
                return _bID_Banco;
            }

            set
            {
                _bID_Banco = value;
            }
        }

        public string SNombre_Banco
        {
            get
            {
                return _sNombre_Banco;
            }

            set
            {
                _sNombre_Banco = value;
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
