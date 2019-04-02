using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LetsGo_DAL.Catalogos_Mantenimientos
{
    public class Cls_Tipo_Vehiculo_DAL
    {
        private string _sDescripcion, _sMsjError;
        private int _iID_Tipo_Vehiculo;
        public DataTable Obj_DT = new DataTable();

        public string sDescripcion
        {
            get
            {
                return sDescripcion;
            }

            set
            {
                sDescripcion = value;
            }
        }

        public string sMsjError
        {
            get
            {
                return _sMsjError;
            }

            set
            {
                _sMsjError = value;
            }
        }

        public int iID_Tipo_Vehiculo
        {
            get
            {
                return iID_Tipo_Vehiculo;
            }

            set
            {
                iID_Tipo_Vehiculo = value;
            }
        }
    }
}
