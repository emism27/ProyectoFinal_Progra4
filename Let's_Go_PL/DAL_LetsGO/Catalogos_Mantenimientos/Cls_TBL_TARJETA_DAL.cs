using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL_LetsGO.Catalogos_Mantenimientos
{
    public class Cls_TBL_TARJETA_DAL
    {
        #region Variables
        public System.Data.DataSet DS = new System.Data.DataSet();
        private long _IID_Numero_Tarjeta; private byte _bID_Tipo_Tarjeta; private byte _bID_Banco; private long _INumero_Cuenta; private byte _bCVV;
        private DateTime _DTFecha_Vencimiento;

        public DataTable Obj_DT = new DataTable();
        private char _cAx;
        private bool bln_BEstado; // TRUE = exitoso  /  FALSE = fallido

        public long IID_Numero_Tarjeta
        {
            get
            {
                return _IID_Numero_Tarjeta;
            }

            set
            {
                _IID_Numero_Tarjeta = value;
            }
        }

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

        public long INumero_Cuenta
        {
            get
            {
                return _INumero_Cuenta;
            }

            set
            {
                _INumero_Cuenta = value;
            }
        }

        public byte BCVV
        {
            get
            {
                return _bCVV;
            }

            set
            {
                _bCVV = value;
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

        public DateTime DTFecha_Vencimiento
        {
            get
            {
                return _DTFecha_Vencimiento;
            }

            set
            {
                _DTFecha_Vencimiento = value;
            }
        }

        #endregion
    }
}
