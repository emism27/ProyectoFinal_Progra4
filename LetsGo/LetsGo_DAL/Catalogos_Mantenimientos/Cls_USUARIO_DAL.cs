using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LetsGo_DAL.Catalogos_Mantenimientos
{
    public class Cls_USUARIO_DAL
    {
        #region Variables
        public System.Data.DataSet DS = new System.Data.DataSet();
        private int _iID_Usuario; private string _sNombre; private string _sEmail; private string _sTelefono; private string _sPassword;

        public int IID_Usuario
        {
            get
            {
                return _iID_Usuario;
            }

            set
            {
                _iID_Usuario = value;
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

        public string STelefono
        {
            get
            {
                return _sTelefono;
            }

            set
            {
                _sTelefono = value;
            }
        }

        public string SPassword
        {
            get
            {
                return _sPassword;
            }

            set
            {
                _sPassword = value;
            }
        }
        #endregion
    }
}
