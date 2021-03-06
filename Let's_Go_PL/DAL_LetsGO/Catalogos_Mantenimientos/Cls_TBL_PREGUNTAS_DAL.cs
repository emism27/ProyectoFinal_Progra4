using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_LetsGO.Catalogos_Mantenimientos
{
    public class Cls_TBL_PREGUNTAS_DAL
    {
        #region Variables
        public System.Data.DataSet DS = new System.Data.DataSet();
        private byte _bID_Pregunta_Seguridad; private string _sDetalle_Preguntas;
        public DataTable Obj_DT = new DataTable();
        private char _cAx;
        private bool bln_BEstado; // TRUE = exitoso  /  FALSE = fallido

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

        public string SDetalle_Preguntas
        {
            get
            {
                return _sDetalle_Preguntas;
            }

            set
            {
                _sDetalle_Preguntas = value;
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
