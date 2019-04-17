function ValidarEspacios() {

    var id_vehiculo = document.getElementById("txt_Id_Vehiculo").value;
    var matricula = document.getElementsByName("txt_Matricula")[0].value;
    var ano = document.getElementsByName("txt_Año")[0].value;


    if ((id_vehiculo == "") || (matricula == "") || (ano == "")) {  //COMPRUEBA CAMPOS VACIOS
        alert("Los campos no pueden quedar vacios");
        return true;
    }

    if (document.getElementById("txt_Id_Vehiculo").value.length > 10) {
        alert("Error: El ID del vehículo tiene un máximo de 10 números");
        return false;
    }
    if (document.getElementById("txt_Matricula").value.length > 20) {
        alert("Error: La matrícula tiene un máximo de 20 letras");
        return false;
    }

    if (document.getElementById("txt_Año").value.length > 4) {
        alert("Error: El año tiene un máximo de 4 números");
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