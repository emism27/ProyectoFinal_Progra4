namespace LetsGo_DAL.Catalogos_Mantenimientos
{
    public class Cls_TBL_ESTADOS_DAL
    {
        #region Variables
        public System.Data.DataSet DS = new System.Data.DataSet();
        private byte _bID_Estado; private string _sEstado;

        public byte BID_Estado
        {
            get
            {
                return _bID_Estado;
            }

            set
            {
                _bID_Estado = value;
            }
        }

        public string SEstado
        {
            get
            {
                return _sEstado;
            }

            set
            {
                _sEstado = value;
            }
        }
        #endregion
    }
}
