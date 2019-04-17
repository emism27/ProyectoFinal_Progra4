function ValidarEspacios() {

    var id_conductor = document.getElementById("txt_Id_Conductor").value;


    if ((id_conductor == "")) {  //COMPRUEBA CAMPOS VACIOS
        alert("Los campos no pueden quedar vacios");
        return true;
    }

    if (document.getElementById("txt_Id_Conductor").value.length > 10) {
        alert("Error: El ID del conductor tiene un máximo de 10 números");
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