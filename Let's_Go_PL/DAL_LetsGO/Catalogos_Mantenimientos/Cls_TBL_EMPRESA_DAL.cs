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
        private char _cAx;
        private bool bln_BEstado; // TRUE = exitoso  /  FALSE = fallido

        public int IID_Cedula_Juridica
        {
            get
            {
                return _iID_Cedula_Juridica;
            }

            set
            {
                _iID_Cedula_Juridica = value;
            }
        }

        public string SNombre_Empresa
        {
            get
            {
                return _sNombre_Empresa;
            }

            set
            {
                _sNombre_Empresa = value;
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

        public string SSitio_Web
        {
            get
            {
                return _sSitio_Web;
            }

            set
            {
                _sSitio_Web = value;
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

        public string SDireccion
        {
            get
            {
                return _sDireccion;
            }

            set
            {
                _sDireccion = value;
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
