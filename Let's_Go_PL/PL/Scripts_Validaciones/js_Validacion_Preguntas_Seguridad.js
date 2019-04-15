function ValidarEspacios() {

    var id_preguntas = document.getElementById("txt_Id_Preguntas").value;
    var preguntas = document.getElementsByName("txt_Preguntas")[0].value;



    if ((id_preguntas == "") || (preguntas == "")) {  //COMPRUEBA CAMPOS VACIOS
        alert("Los campos no pueden quedar vacios");
        return true;
    }


    if (document.getElementById("txt_Id_Preguntas").value.length > 8) {
        alert("Error: El ID preguntas tiene un máximo de 8 letras");
        return false;
    }

    if (document.getElementById("txt_Preguntas").value.length > 50) {
        alert("Error: Las preguntas tiene un máximo de 50 carácteres");
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

function ValidarLetras(e) {
    key = e.keyCode || e.which; // captura la entrada digitada en el teclado // CODIGO ASCCI
    teclado = String.fromCharCode(key).toLowerCase(); // pasa el valor string que 
    letras = "zxcvbnmasdfghjklñqwertyuiopáéíóú"; // arreglo de letras permitidas
    especiales = "8-37-38-48"; // arreglo de caracteres especiales
    teclado_especiales = false; // variable de controñl o bandera
    // Arreglo 
    for (var i in especiales) {
        if (key == especiales[i]) {
            teclado_especiales = true
            break;
        }
        // [TODO EL IF DE ABAJO ] = digita ejm, un alt64, y busque dentro del arreglo, si lo encuentra, devuelve la posicion sino devuelve -1 
        if ((letras.indexOf(teclado) == -1) && (!teclado_especiales)) // [ indexOf ] = Devuelve la posicion  de una letra 
        {
            alert("No puede dígitar números, espacios o carácteres especiales");
            return false;                                                               // [ innerHTML ] = para buscar dentro del formato de html estandar segun el navegador
        }
        else {
            document.getElementById("formError").innerHTML = "";
            return true;
        }
    }
}
