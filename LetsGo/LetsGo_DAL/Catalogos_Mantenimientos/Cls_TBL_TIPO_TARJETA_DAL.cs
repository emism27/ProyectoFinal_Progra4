namespace LetsGo_DAL.Catalogos_Mantenimientos
{
    public class Cls_TBL_TIPO_TARJETA_DAL
    {
        #region Variables
        public System.Data.DataSet DS = new System.Data.DataSet();
        private byte _bID_Tipo_Tarjeta; private string _sDescripcion;

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

        public string SDescripcion
        {
            get
            {
                return _sDescripcion;
            }

            set
            {
                _sDescripcion = value;
            }
        }
        #endregion
    }
}
