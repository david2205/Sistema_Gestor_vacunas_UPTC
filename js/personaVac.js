function onlyNums(e){
    const code = window.event ? e.which : e.keyCode;
    return !( code < 48 || code > 57 );
}

function onlyAlpha(e){
    const code = window.event ? e.which : e.keyCode;
    return !(code != 32 && (code < 65 || code > 90) && (code < 97 || code > 122));
}

function prueba(){
    const n_documento = document.getElementById("n_documento").value;
    const nombres = document.getElementById("nombres").value;

    console.log(n_documento, nombres);
}

function agregar(){

	const tipoDocumento = document.getElementById("optionId").value;
	const n_documento = document.getElementById("n_documento").value;
	const nombres = document.getElementById("nombres").value;
	const apellidos = document.getElementById("apellidos").value;
	const f_nacimiento = document.getElementById("nacimiento").value;
	const dep_Universidad = document.getElementById("optionDepartamento").value;
	const fabricante = document.getElementById("fabricante").value;
        const dosis_necesarias = document.getElementById("nece_dosis").value;
	const dosis_1 = document.getElementById("dosis_1").value;
	const lote_dosis1 = document.getElementById("lote_dosis1").value;
	const f_vacDosis1 = document.getElementById("f_vacDosis1").value;
	const lugar_Dosis1 = document.getElementById("lugar_Dosis1").value;
	const dosis_2 = document.getElementById("dosis_2").value;
	const lote_dosis2 = document.getElementById("lote_dosis2").value;
	const f_vacDosis2 = document.getElementById("f_vacDosis2").value;
	const lugar_Dosis2 = document.getElementById("lugar_Dosis2").value;

	if (fabricante == "Seleccione..." || tipoDocumento == "Seleccione..." || dep_Universidad == "Seleccione...") {
		alert("Seleccione..., no es valido");
	}else{
            
            console.log(tipoDocumento,nombres,apellidos,f_nacimiento,dep_Universidad,fabricante);
            
            const varSend = `tipoDocumento=${tipoDocumento}&n_documento=${n_documento}&nombres=${nombres}&apellidos=${apellidos}&f_nacimiento=${f_nacimiento}&dep_universidad=${dep_Universidad}&fabricante=${fabricante}&=dosis_necesarias${dosis_necesarias}&dosis_1=${dosis_1}&lote_dosis1=${lote_dosis1}&f_vacDosis1=${f_vacDosis1}&lugar_Dosis1=${lugar_Dosis1}&dosis_2=${dosis_2}&lote_dosis2=${lote_dosis2}&f_vacDosis2=${f_vacDosis2}&lote_dosis2=${lote_dosis2}`;
            var xhr = new XMLHttpRequest();
            xhr.open()
            xhr.open("POST", "control_personaVac", true);
            xhr.onreadystatechange = () => {
            if (xhr.readyState == 4 && xhr.status == 200) {
                if (!JSON.parse(xhr.responseText)) {
                    alert("Error n_documento ya ha sido Registrada");
                } else {
                   alert("Cliente Registrado con éxito");
                   cancelRegistro();
                }
              }
            };
            console.log(varSend);
            xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xhr.send(varSend);
    
        }

}

function mostrar_NDosis(){
	const fabricante = document.getElementById("fabricante").value;
	if (fabricante == "Janssen") {
		document.getElementById("nece_dosis").value = "1";
		document.getElementById("lugar_Dosis2").setAttribute("disabled","lugar_Dosis2");
		document.getElementById("f_vacDosis2").setAttribute("disabled","f_vacDosis2");
		document.getElementById("lote_dosis2").setAttribute("disabled","lote_dosis2");

	} else if (fabricante == "Seleccione...") {
		document.getElementById("nece_dosis").value = "";
	} 
	else {
		document.getElementById("nece_dosis").value = "2";
		document.getElementById("lugar_Dosis2").removeAttribute("disabled");
		document.getElementById("f_vacDosis2").removeAttribute("disabled");
		document.getElementById("lote_dosis2").removeAttribute("disabled");		

	}
}

function cancelRegistro() {
	alert("Registro Cancelado");
}
