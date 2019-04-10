    function validar(){
    	if(document.NombreForm.NombreCampo.value==''){
    		alert('El campo esta vacio');
    		document.NombreForm.NombreCampo.focus();
    		return false;
    	}
    }