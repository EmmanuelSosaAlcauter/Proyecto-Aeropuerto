function errores(valor) {
    var paraAgregar = document.getElementById("error");
    while (paraAgregar.firstChild) {
        paraAgregar.removeChild(paraAgregar.firstChild);
    }
    var elemento = document.createElement("h1");
    elemento.setAttribute("class", "error");
    elemento.innerHTML = valor;
    paraAgregar.appendChild(elemento);
}

function validaciones() {
    var nombre, apellido, curp, fecha, correo, contra, confirmar;
    nombre = document.getElementById("nombre").value;
    apellido = document.getElementById("apellido").value;
    fecha = document.getElementById("fecha").value;
    correo = document.getElementById("correo").value;
    curp = document.getElementById("curp").value;
    contra = document.getElementById("contra").value;
    confirmar = document.getElementById("confirmar").value;
    
    if (response.length === 0) {
        alert("Captcha no verificado");
        return false;
    } else {
        return true;
        //alert("Captcha verificado");
    }

    if (isEmpty(nombre) || isEmpty(apellido) || isEmpty(fecha) || isEmpty(curp)
            || isEmpty(correo) || isEmpty(contra) || isEmpty(confirmar)) {
        errores("Debe llenar todos los campos");
        return false;
    } else if (curp.length !== 18) {
        errores("La CURP debe medir 18 caracteres de largo");
        return false;
    } else if (!validarCurp(curp)) {
        errores("Formato de CURP incorrecto");
        return false;
    } else if ("^([\\p{L}-\\.]+){1,64}@([\\w&&[^_]]+){2,255}.[a-z]{2,}$".test(correo)) {
        errores("Formato de correo incorrecto");
        return false;
    } else if (contra !== confirmar) {
        errores("Deben coincidir la contra y confirmar");
        return false;
    } else {
        return true;
    }
}

function isEmpty(valor) {
    if (valor.trim() === "") {
        return true;
    } else {
        return false;
    }
}

function validarCurp(valor) {
    valor = valor.toUpperCase();
    var estados = "(AS|BS|CL|CS|DF|GT|HG|MC|MS|NL|PL|QR|SL|TC|TL|YN|NE|BC|CC|CM|CH|DG|GR|JC|MN|NT|OC|QT|SP|SR|TS|VZ|ZS)";
    var patron = "[A-Z]{4}\\d{6}(H|M){1}" + estados + "{1}[A-Z]{3}(A|Z|\\d){1}\\d{1}";
    if (patron.test(valor)) {
        return true;
    } else {
        return false;
    }
}