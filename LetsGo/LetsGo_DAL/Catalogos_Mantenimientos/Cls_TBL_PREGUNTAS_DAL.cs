namespace LetsGo_DAL.Catalogos_Mantenimientos
{
    public class Cls_TBL_PREGUNTAS_DAL
    {
        #region Variables
        public System.Data.DataSet DS = new System.Data.DataSet();
        private byte _bID_Pregunta_Seguridad; private string _sDetalle_Preguntas;

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
        #endregion
    }
}
