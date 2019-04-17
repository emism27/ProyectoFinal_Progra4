function ValidarEspacios() {

    var id_cuenta = document.getElementById("txt_Id_Cuenta").value;
    var nombre = document.getElementsByName("txt_Nombre")[0].value;
    var apellido1 = document.getElementsByName("txt_Apellido1")[0].value;
    var apellido2 = document.getElementsByName("txt_Apellido2")[0].value;
    var correo = document.getElementsByName("txt_Correo")[0].value;
    var telefono = document.getElementsByName("txt_Telefono")[0].value;
    var respuesta_seguridad = document.getElementsByName("txt_Respuesta_Seguridad")[0].value;

    var expr = /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i;


    if ((id_cuenta == "") || (nombre == "") || (apellido1 == "") || (apellido2 == "") || (correo == "") || (telefono == "") || (respuesta_seguridad == "")) {  //COMPRUEBA CAMPOS VACIOS
        alert("Los campos no pueden quedar vacios");
        return true;
    }

    if (!expr.test(correo)) {                                                            //COMPRUEBA MAIL
        alert("Error: La dirección de correo es incorrecta.");
        return false;
    }

    if (document.getElementById("txt_Nombre").value.length > 30) {
        alert("Error: El nombre tiene un máximo de 30 letras");
        return false;
    }
    if (document.getElementById("txt_Apellido1").value.length > 30) {
        alert("Error: El apellido 1 tiene un máximo de 30 letras");
        return false;
    }

    if (document.getElementById("txt_Apellido2").value.length > 30) {
        alert("Error: El apellido 2 tiene un máximo de 30 letras");
        return false;
    }

    if (document.getElementById("txt_Correo").value.length > 30) {
        alert("Error: El correo tiene un máximo de 30 caráteres");
        return false;
    }

    if (document.getElementById("txt_Respuesta_Seguridad").value.length > 30) {
        alert("Error: ELa respuesta de seguridad tiene un máximo de 30 letras");
        return false;
    }

    if (document.getElementById("txt_Id_Cuenta").value.length > 8) {
        alert("Error: La cuenta tiene un máximo de 8 números");
        return false;
    }

    if (document.getElementById("txt_Telefono").value.length > 8) {
        alert("Error: El teléfono tiene un máximo de 8 números");
        return false;
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

function ValidarNumeros(e) {
    var key = window.event ? e.which : e.keyCode;
    if (key < 48 || key > 57) {
        alert("Solo puede dígitar números");
        e.preventDefault();
    }

}


