namespace LetsGo_DAL.Catalogos_Mantenimientos
{
    public class Cls_TBL_RATING_DAL
    {
        #region Variables
        public System.Data.DataSet DS = new System.Data.DataSet();
        private byte _bID_Rating; private byte _bRating; private int _iID_Viaje;

        public byte BID_Rating
        {
            get
            {
                return _bID_Rating;
            }

            set
            {
                _bID_Rating = value;
            }
        }

        public byte BRating
        {
            get
            {
                return _bRating;
            }

            set
            {
                _bRating = value;
            }
        }

        public int IID_Viaje
        {
            get
            {
                return _iID_Viaje;
            }

            set
            {
                _iID_Viaje = value;
            }
        }
        #endregion
    }
}
