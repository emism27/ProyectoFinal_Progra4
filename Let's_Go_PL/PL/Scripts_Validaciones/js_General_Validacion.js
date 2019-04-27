// Validacion de solo ingreso de  numeros con captura de Codigo Ascii 
function validNumeros(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (((charCode == 8) || (charCode == 32)
        || (charCode >= 48 && charCode <= 57))) {
        return true;
    }
    else {
        alert(" Debe de ingresar solo Números");

        return false;
    }
}

// Validacion de solo ingreso de letras con captura de Codigo Ascii 

function validAlfabeticos(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (((charCode == 8) || (charCode == 32)
        || (charCode >= 65 && charCode <= 90)
        || (charCode >= 97 && charCode <= 122))) {

        return true;
    }
    else {

        alert(" Debe de ingresar solo Letras");

        return false;
    }
}



// Numeros decimales y enteros

function Enteros_Decimales(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57) && charCode != 46) 
        return false;
         return true;
    
} 


// Validacion de Espacios Vacios en TBL_Cliente

function ValidarEspaciosVacios() {

    var ID_ESTADO = document.getElementById("txt_Id_Estado").value;
    var DESCRIPCION = document.getElementsByName("txt_Descripcion")[0].value;


    if ((ID_ESTADO == "") || (DESCRIPCION == "")) {  //COMPRUEBA CAMPOS VACIOS
        alert("Los campos no pueden quedar vacios por favor completa para continuar");
        return true;
    }

}



function validarNumeroTelefono(evt){
    var numeroTelefono = document.getElementById('txt_Telefono');
    var expresionRegular1=/^([0-9]+){9}$/;//<--- con esto vamos a validar el numero
    var expresionRegular2=/\s/;//<--- con esto vamos a validar que no tenga espacios en blanco
 
    if(numeroTelefono.value=='')
        alert('campo es obligatorio');
    else if(expresionRegular2.test(numeroTelefono.value))
        alert('error existen espacios en blanco');
    else if(!expresionRegular1.test(numeroTelefono.value))
        alert('Numero de telefono incorrecto');
}