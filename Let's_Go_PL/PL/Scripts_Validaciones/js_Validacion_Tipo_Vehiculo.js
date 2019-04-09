function vacio(q) {  
    for ( i = 0; i < q.length; i++ ) {  
        if ( q.charAt(i) != " " ) {  
            return true  
        }  
    }  
    return false  
}  
  
//valida que el campo no este vacio y no tenga solo espacios en blanco  
function valida(F) {  
          
    if( vacio(F.campo.value) == false ) {  
        alert("Introduzca un cadena de texto.")  
        return false  
    } else {  
        alert("OK")  
            //cambiar la linea siguiente por return true para que ejecute la accion del formulario  
        return false  
    }  
          
}  