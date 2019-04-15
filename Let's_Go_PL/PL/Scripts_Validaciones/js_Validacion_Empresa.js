function ValidarEspacio() {

    var id_empresa = document.getElementById("txt_Id_Empresa").value;
    var nombre = document.getElementsByName("txt_Nombre")[0].value;
    var direccion = document.getElementsByName("txt_Direccion")[0].value;
    var sitio = document.getElementsByName("txt_Sitio_Web")[0].value;
    var telefono = document.getElementsByName("txt_Telefono")[0].value;
    var correo = document.getElementsByName("txt_Email")[0].value;

    var expr = /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i;


    if ((id_empresa == "") || (nombre == "") || (direccion == "") || (sitio == "") || (telefono == "") || (correo == "")) {  //COMPRUEBA CAMPOS VACIOS
        alert("Los campos no pueden quedar vacios");
        return true;
    }

    if (!expr.test(correo)) {                                                            //COMPRUEBA MAIL
        alert("Error: La dirección de correo es incorrecta.");
        return false;
    }

    if (document.getElementById("txt_Id_Empresa").value.length > 8) {
        alert("Error: El ID empresa tiene un máximo de 8 números");
        return false;
    }
    if (document.getElementById("txt_Nombre").value.length > 30) {
        alert("Error: El nombre tiene un máximo de 30 letras");
        return false;
    }

    if (document.getElementById("txt_Direccion").value.length > 60) {
        alert("Error: La dirección tiene un máximo de 60 letras");
        return false;
    }

    if (document.getElementById("txt_Sitio_Web").value.length > 30) {
        alert("Error: El sitio web tiene un máximo de 30 caráteres");
        return false;
    }

    if (document.getElementById("txt_Telefono").value.length > 8) {
        alert("Error: El teléfono tiene un máximo de 8 números");
        return false;
    }

    if (document.getElementById("txt_Email").value.length > 30) {
        alert("Error: El correo tiene un máximo de 8 números");
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


