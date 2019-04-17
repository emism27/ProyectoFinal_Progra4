function ValidarEspacios() {

    var id_vehiculo = document.getElementById("txt_Id_Tipo_Vehiculo").value;
    var descripcion = document.getElementsByName("txt_Decripcion_Tipo_Vehiculo")[0].value;

    if ((id_vehiculo == "") || (descripcion == "")) {  //COMPRUEBA CAMPOS VACIOS
        alert("Los campos no pueden quedar vacios");
        return true;
    }

    if (document.getElementById("txt_Id_Tipo_Vehiculo").value.length > 10) {
        alert("Error: El ID vehiculo tiene un máximo de 30 letras");
        return false;
    }
    if (document.getElementById("txt_Decripcion_Tipo_Vehiculo").value.length > 100) {
        alert("Error: La descripción del vehículo tiene un máximo de 100 letras");
        return false;
    }



}

function ValidarNumeros(e) {
    var key = window.event ? e.which : e.keyCode;
    if (key < 48 || key > 57) {
        alert("Solo puede dígitar números");
        e.preventDefault();
    }

}