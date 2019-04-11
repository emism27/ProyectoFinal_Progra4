
// Validacion de solo ingreso de  numeros con captura de Codigo Ascii 
function ValidarNumeros(e) {
    var key = window.Event ? e.which : e.keyCode
    return (key >= 48 && key <= 57)

}


// Validacion de solo ingreso de letras con captura de Codigo Ascii 
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
            document.getElementById("formError").innerHTML = "No puede digitar números"  // [ document.getElementById ] = busca dentro del chrome id del control en el navegador que se utiliza    
            return false;                                                               // [ innerHTML ] = para buscar dentro del formato de html estandar segun el navegador
        }
        else {
            document.getElementById("formError").innerHTML = "";
            return true;
        }
    }
}


// Validacion de Espacios Vacios en TBL_Cliente

function ValidarEspaciosTBL_Estado() {

    var ID_ESTADO = document.getElementById("txt_Id_Estado").value;
    var DESCRIPCION = document.getElementsByName("txt_Descripcion")[0].value;
    

    if ((ID_ESTADO == "") || (DESCRIPCION == "")) {  //COMPRUEBA CAMPOS VACIOS
        alert("Los campos no pueden quedar vacios por favor completa para continuar");
        return true;
    }

}



