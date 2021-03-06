using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL_LetsGO.Catalogos_Mantenimientos
{
    public class Cls_TBL_MODELO_DAL
    {
        #region Variables
        public System.Data.DataSet DS = new System.Data.DataSet();
        private byte _bID_Modelo; private byte _bID_Marca; private string _sModelo;
        private char _cAx;
        private bool bln_BEstado; // TRUE = exitoso  /  FALSE = fallido

        public DataTable Obj_DT = new DataTable();

        public byte BID_Modelo
        {
            get
            {
                return _bID_Modelo;
            }

            set
            {
                _bID_Modelo = value;
            }
        }

        public byte BID_Marca
        {
            get
            {
                return _bID_Marca;
            }

            set
            {
                _bID_Marca = value;
            }
        }

        public string SModelo
        {
            get
            {
                return _sModelo;
            }

            set
            {
                _sModelo = value;
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
