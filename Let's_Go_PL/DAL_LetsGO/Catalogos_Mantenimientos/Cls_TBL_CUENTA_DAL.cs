using System;
using System.Collections.Generic;
using System.Data;
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
        public DataTable Obj_DT = new DataTable();
        private char _cAx;
        private bool bln_BEstado; // TRUE = exitoso  /  FALSE = fallido

        public int IID_Cuenta
        {
            get
            {
                return _iID_Cuenta;
            }

            set
            {
                _iID_Cuenta = value;
            }
        }

        public string SNombre
        {
            get
            {
                return _sNombre;
            }

            set
            {
                _sNombre = value;
            }
        }

        public string SApellido_1
        {
            get
            {
                return _sApellido_1;
            }

            set
            {
                _sApellido_1 = value;
            }
        }

        public string SApellido_2
        {
            get
            {
                return _sApellido_2;
            }

            set
            {
                _sApellido_2 = value;
            }
        }

        public string SPass
        {
            get
            {
                return _sPass;
            }

            set
            {
                _sPass = value;
            }
        }

        public int ITelefono
        {
            get
            {
                return _iTelefono;
            }

            set
            {
                _iTelefono = value;
            }
        }

        public string SEmail
        {
            get
            {
                return _sEmail;
            }

            set
            {
                _sEmail = value;
            }
        }

        public byte BID_Pregunta_Seguridad
        {
            get
            {
                return _bID_Pregunta_Seguridad;
            }

            set
            {
                _bID_Pregunta_Seguridad = value;
            }
        }

        public string SRespuesta_Seguridad
        {
            get
            {
                return _sRespuesta_Seguridad;
            }

            set
            {
                _sRespuesta_Seguridad = value;
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
