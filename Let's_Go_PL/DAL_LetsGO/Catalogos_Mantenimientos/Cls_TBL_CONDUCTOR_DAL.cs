using System.Data;

namespace DAL_LetsGO.Catalogos_Mantenimientos

{
    public class Cls_TBL_CONDUCTOR_DAL
    {
        #region Variables
        public System.Data.DataSet DS = new System.Data.DataSet();
        private int _iID_Conductor; private int _iID_Cuenta; private byte _bID_Estado; private byte _bID_Vehiculo;
        public DataTable Obj_DT = new DataTable();
        #endregion
    }
}
