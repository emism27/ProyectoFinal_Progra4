
// Validacion de Espacios Vacios en TBL_Viaje
function ValidarEspaciosTBL_Comision() {

    var ID_Comision = document.getElementById("txt_Id_Comision").value;
    var Comision = document.getElementsByName("txt_Comision")[0].value;
    var Descripcion = document.getElementById("txt_Descripcion")[0].value;


    if ((ID_Comision == "") || (Comision == "") || (Descripcion == "")) {  //COMPRUEBA CAMPOS VACIOS
        alert("Los campos no pueden quedar vacios por favor completa para continuar");
        return true;
    }

}

function ValidarEspaciosTBL_Encabezado() {

    var ID_Encabezado = document.getElementById("txt_Id_Encabezado").value;
    var Fecha = document.getElementsByName("txt_Fecha")[0].value;
    var ID_Viaje = document.getElementById("txt_Id_Viaje").value;


    if ((ID_Encabezado == "") || (Fecha == "")|| (ID_Viaje == "")) {  //COMPRUEBA CAMPOS VACIOS
        alert("Los campos no pueden quedar vacios por favor completa para continuar");
        return true;
    }

}
