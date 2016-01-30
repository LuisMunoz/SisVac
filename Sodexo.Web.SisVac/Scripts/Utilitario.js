var wPopUp = null;
var cPopUp = 0;

function muestraReloj(NombreControl) {
    // Compruebo si se puede ejecutar el script en el navegador del usuario
    if (!document.layers && !document.all && !document.getElementById) return;
    // Obtengo la hora actual y la divido en sus partes
    var fechacompleta = new Date();
    var horas = fechacompleta.getHours();
    var minutos = fechacompleta.getMinutes();
    var segundos = fechacompleta.getSeconds();
    var mt = "AM";
    // Pongo el formato 12 horas
    if (horas > 12) {
        mt = "PM";
        horas = horas - 12;
    }
    if (horas == 0) horas = 12;
    // Pongo minutos y segundos con dos digitos
    if (minutos <= 9) minutos = "0" + minutos;
    if (segundos <= 9) segundos = "0" + segundos;
    // En la variable 'cadenareloj' puedes cambiar los colores y el tipo de fuente
    //cadenareloj = "<font size='-1' face='verdana'>" + horas + ":" + minutos + ":" + segundos + " " + mt + "</font>";
    cadenareloj = horas + ":" + minutos + ":" + segundos + " " + mt;
    // Escribo el reloj de una manera u otra, segun el navegador del usuario
    //if (document.layers) {
    //    document.layers.spanreloj.document.write(cadenareloj);
    //    document.layers.spanreloj.document.close();
    //}
    //else if (document.all) spanreloj.innerHTML = cadenareloj;
    //else if (document.getElementById) document.getElementById("spanreloj").innerHTML = cadenareloj;

    document.getElementById(NombreControl).innerHTML = cadenareloj;
    // Ejecuto la funcion con un intervalo de un segundo
    setTimeout("muestraReloj('" + NombreControl + "')", 1000);
}

/*
function fn_SeleccionarAgente() {
    //var url = 'FechaHora.aspx';
    var url = 'Popup.aspx';
    //document.getElementById('divFondo').style.display = 'block';
    //document.getElementById('divFondo').className = 'conFondoTransparente';
    document.getElementById('txtEstado').value = 'cargando';
    var cliente = window.showModalDialog(url, 'Buscar_Agente', 'dialogWidth=640px; dialogHeight=600px; status:no; unadorned:yes; help:no; scroll:no; position:center; resize:0; toolbar:no;');
    //alert(cliente);
    //document.getElementById('divFondo').style.display = 'none';
    //document.getElementById('divFondo').className = '';
    if (cliente != null) {
        //alert('cramosc1');
        document.getElementById('TextBox1').value = cliente.NOMBRE; //CaracterExtra(cliente.NOMBRE);
        //document.getElementById('uscMenu_hdCodAge').value = cliente.CODIGO;
        //document.getElementById('uscMenu_hdNomAge').value = cliente.NOMBRE.replace('?', 'Ñ').replace('&#191;', 'Ñ'); //CaracterExtra(cliente.NOMBRE);
        //document.getElementById('hdCodAge').value = cliente.CODIGO;
        //document.getElementById('hdNomAge').value = cliente.NOMBRE.replace('?', 'Ñ').replace('&#191;', 'Ñ'); //CaracterExtra(cliente.NOMBRE);
        //document.getElementById('hdNomCor').value = cliente.NOMBRE.replace('?', 'Ñ').replace('&#191;', 'Ñ'); //CaracterExtra(cliente.NOMBRE);
    }
    document.getElementById('txtEstado').value = 'terminado';
}


function fn_SeleccionarAgente2() {
    //var url = 'FechaHora.aspx';
    var url = 'Popup.aspx';
    //document.getElementById('divFondo').style.display = 'block';
    //document.getElementById('divFondo').className = 'conFondoTransparente';
    document.getElementById('txtEstado').value = 'cargando';
    var cliente = window.open(url, 'Buscar_Agente', 'height=255,width=250,toolbar=no,directories=no,status=no, menubar=no,scrollbars=no,resizable=no ,modal=yes');
    //alert(cliente);
    //document.getElementById('divFondo').style.display = 'none';
    //document.getElementById('divFondo').className = '';
    if (cliente != null) {
        //alert('cramosc1');
        document.getElementById('TextBox1').value = cliente.NOMBRE; //CaracterExtra(cliente.NOMBRE);
        //document.getElementById('uscMenu_hdCodAge').value = cliente.CODIGO;
        //document.getElementById('uscMenu_hdNomAge').value = cliente.NOMBRE.replace('?', 'Ñ').replace('&#191;', 'Ñ'); //CaracterExtra(cliente.NOMBRE);
        //document.getElementById('hdCodAge').value = cliente.CODIGO;
        //document.getElementById('hdNomAge').value = cliente.NOMBRE.replace('?', 'Ñ').replace('&#191;', 'Ñ'); //CaracterExtra(cliente.NOMBRE);
        //document.getElementById('hdNomCor').value = cliente.NOMBRE.replace('?', 'Ñ').replace('&#191;', 'Ñ'); //CaracterExtra(cliente.NOMBRE);
    }
    document.getElementById('txtEstado').value = 'terminado';
}


function fn_SeleccionarAgente3() {
    //var url = 'FechaHora.aspx';
    var url = 'Popup.aspx';
    //document.getElementById('divFondo').style.display = 'block';
    //document.getElementById('divFondo').className = 'conFondoTransparente';
    document.getElementById('txtEstado').value = 'cargando';
    wPopUp = window.open(url, 'Buscar_Agente3', 'height=255,width=250,toolbar=no,directories=no,status=no, menubar=no,scrollbars=no,resizable=no ,modal=yes');
    //document.getElementById('hfPopUp').value = window.AbrirPopUp(url,250,255,'formulario');
    //alert(cliente);
    //document.getElementById('divFondo').style.display = 'none';
    //document.getElementById('divFondo').className = '';
    //if (cliente != null) {
    //    //alert('cramosc1');
    //    document.getElementById('TextBox1').value = cliente.NOMBRE; //CaracterExtra(cliente.NOMBRE);
    //    //document.getElementById('uscMenu_hdCodAge').value = cliente.CODIGO;
    //    //document.getElementById('uscMenu_hdNomAge').value = cliente.NOMBRE.replace('?', 'Ñ').replace('&#191;', 'Ñ'); //CaracterExtra(cliente.NOMBRE);
    //    //document.getElementById('hdCodAge').value = cliente.CODIGO;
    //    //document.getElementById('hdNomAge').value = cliente.NOMBRE.replace('?', 'Ñ').replace('&#191;', 'Ñ'); //CaracterExtra(cliente.NOMBRE);
    //    //document.getElementById('hdNomCor').value = cliente.NOMBRE.replace('?', 'Ñ').replace('&#191;', 'Ñ'); //CaracterExtra(cliente.NOMBRE);
    //}
    //document.getElementById('txtEstado').value = 'terminado';
}


function fn_SeleccionarAgente4() {
    //var url = 'FechaHora.aspx';
    //var url = '../Popup.aspx';
    //document.getElementById('divFondo').style.display = 'block';
    //document.getElementById('divFondo').className = 'conFondoTransparente';
    //document.getElementById('txtEstado').value = 'cargando';
    //wPopUp = window.open(url, 'Buscar_Agente', 'height=255,width=250,toolbar=no,directories=no,status=no, menubar=no,scrollbars=no,resizable=no ,modal=yes');
    //document.getElementById('hfPopUp').value = window.AbrirPopUp(url,250,255,'formulario');
    //alert(cliente);
    //document.getElementById('divFondo').style.display = 'none';
    //document.getElementById('divFondo').className = '';
    //if (cliente != null) {
    //    //alert('cramosc1');
    //    document.getElementById('TextBox1').value = cliente.NOMBRE; //CaracterExtra(cliente.NOMBRE);
    //    //document.getElementById('uscMenu_hdCodAge').value = cliente.CODIGO;
    //    //document.getElementById('uscMenu_hdNomAge').value = cliente.NOMBRE.replace('?', 'Ñ').replace('&#191;', 'Ñ'); //CaracterExtra(cliente.NOMBRE);
    //    //document.getElementById('hdCodAge').value = cliente.CODIGO;
    //    //document.getElementById('hdNomAge').value = cliente.NOMBRE.replace('?', 'Ñ').replace('&#191;', 'Ñ'); //CaracterExtra(cliente.NOMBRE);
    //    //document.getElementById('hdNomCor').value = cliente.NOMBRE.replace('?', 'Ñ').replace('&#191;', 'Ñ'); //CaracterExtra(cliente.NOMBRE);
    //}
    //document.getElementById('txtEstado').value = 'terminado';
    //document.form1.submit();
    //MostrarCargando();
    document.getElementById('ContentPlaceHolder1_hfMetodo').value = 'MostrarPolizaSoat';
    document.forms["form1"].submit();
    //alert('cramosc');
}
*/


function fn_Devolver() {
    var res = new Object();
    res.NOMBRE = 'RIESGO';

    window.returnValue = res;
    window.close();

}


function fn_Devolver2() {
    var res = new Object();
    window.opener.document.getElementById('TextBox1').value = 'RIESGO';

    window.opener.document.getElementById('txtEstado').value = 'terminado';

    //window.returnValue = res;
    window.close();
    window.chi
}


function AbrirPopUp(form, width, height, formname) {
    var w, h;
    if (document.all) {
        w = document.body.clientWidth;
        h = document.body.clientHeight;
    }
    else if (document.layers) {
        w = window.innerWidth;
        h = window.innerHeight;
    }

    var popW = width, popH = height;
    var leftPos = (w - popW) / 2, topPos = (h - popH) / 2;

    //return window.open(form, formname, 'modal=yes, titlebar=no, toolbar=no, menubar=no,scrollbars=yes, status=no,width=' + popW + ',height=' + popH + ',top=' + topPos + ',left=' + leftPos);
    return window.open(form, formname, 'modal = yes, resizable = yes, directories = no, titlebar = no, toolbar = no, menubar = no, scrollbars = yes, status = no, width=' + popW + ',height=' + popH + ',top=' + topPos + ',left=' + leftPos);
}

function AbrirPopUpModal(form, width, height, formname) {
    var w, h;
    if (document.all) {
        w = document.body.clientWidth;
        h = document.body.clientHeight;
    }
    else if (document.layers) {
        w = window.innerWidth;
        h = window.innerHeight;
    }

    var popW = width, popH = height;
    var leftPos = (w - popW) / 2, topPos = (h - popH) / 2;

    return window.open(form, formname, 'modal = yes, resizable = no,directories = no, titlebar = no, toolbar = no, menubar = no, scrollbars = yes, status = no, width=' + popW + ',height=' + popH + ',top=' + topPos + ',left=' + leftPos);
}


function VerificarPopup() {
    //var hfPopUp = document.getElementById('hfPopUp').value;
    if (wPopUp) {
        if (cPopUp == 1) {
            wPopUp.close();
            wPopUp = null;
            cPopUp = 0;
            document.getElementById('txtEstado').value = 'terminado';
            //document.getElementById('hfPopUp').value = "";
        }
        else {
            cPopUp = 1;
        }
    }

}

function validaFechaDDMMAAAA(fecha) {
    var dtCh = "/";
    var minYear = 1900;
    var maxYear = 2100;
    function isInteger(s) {
        var i;
        for (i = 0; i < s.length; i++) {
            var c = s.charAt(i);
            if (((c < "0") || (c > "9"))) return false;
        }
        return true;
    }
    function stripCharsInBag(s, bag) {
        var i;
        var returnString = "";
        for (i = 0; i < s.length; i++) {
            var c = s.charAt(i);
            if (bag.indexOf(c) == -1) returnString += c;
        }
        return returnString;
    }
    function daysInFebruary(year) {
        return (((year % 4 == 0) && ((!(year % 100 == 0)) || (year % 400 == 0))) ? 29 : 28);
    }
    function DaysArray(n) {
        for (var i = 1; i <= n; i++) {
            this[i] = 31
            if (i == 4 || i == 6 || i == 9 || i == 11) { this[i] = 30 }
            if (i == 2) { this[i] = 29 }
        }
        return this
    }
    function isDate(dtStr) {
        var daysInMonth = DaysArray(12)
        var pos1 = dtStr.indexOf(dtCh)
        var pos2 = dtStr.indexOf(dtCh, pos1 + 1)
        var strDay = dtStr.substring(0, pos1)
        var strMonth = dtStr.substring(pos1 + 1, pos2)
        var strYear = dtStr.substring(pos2 + 1)
        strYr = strYear
        if (strDay.charAt(0) == "0" && strDay.length > 1) strDay = strDay.substring(1)
        if (strMonth.charAt(0) == "0" && strMonth.length > 1) strMonth = strMonth.substring(1)
        for (var i = 1; i <= 3; i++) {
            if (strYr.charAt(0) == "0" && strYr.length > 1) strYr = strYr.substring(1)
        }
        month = parseInt(strMonth)
        day = parseInt(strDay)
        year = parseInt(strYr)
        if (pos1 == -1 || pos2 == -1) {
            return false
        }
        if (strMonth.length < 1 || month < 1 || month > 12) {
            return false
        }
        if (strDay.length < 1 || day < 1 || day > 31 || (month == 2 && day > daysInFebruary(year)) || day > daysInMonth[month]) {
            return false
        }
        if (strYear.length != 4 || year == 0 || year < minYear || year > maxYear) {
            return false
        }
        if (dtStr.indexOf(dtCh, pos2 + 1) != -1 || isInteger(stripCharsInBag(dtStr, dtCh)) == false) {
            return false
        }
        return true
    }
    if (isDate(fecha)) {
        return true;
    } else {
        return false;
    }
}

function ValidarFecha(Control, Obligatorio) {

    if (Obligatorio && (Control.value == '')) {
        alert('Fecha requerida.');
        Control.focus();
    }
    else {
        if (!validaFechaDDMMAAAA(Control.value)) {
            alert('Fecha no válida');
            Control.focus();
        }
    }

}

function MostrarCargando() {
    //var d = document.getElementById('divFondo2');
    //document.getElementById('divFondo').style.display = 'block';
    //d.style.display = 'block';
    var Tam = TamVentana();
    var Scroll = getScrollXY();
    //d.style.left = (Tam[0] - 130)/2 + 'px';
    //d.style.top = (Tam[1] - 162) / 2 + 'px';


    //var d = document.getElementById('divFondo2');
    //document.getElementById('divFondo').style.display = 'block';
    //d.style.display = 'block';
    //var Tam = TamVentana();
    //d.style.left = (Tam[0] - 130) / 2 + 'px';
    //d.style.top = (Tam[1] - 162) / 2 + 'px';


    //var text = '...Procesando, espere por favor...';
    //OcultarCargando();
    //$('body').append('<div class="overlay" id="divFondo" />');

    //document.body.innerHTML = document.body.innerHTML + "<div class='overlay' id='divFondo'/>";

    OcultarCargando();


    var div = document.createElement('div');
    div.type = "div";
    div.id = "divFondo";
    div.className = "overlay";
    //div.style.opacity = 0.5;
    //div.style.filter = 'alpha(opacity=50)';



    //var img = document.createElement('img');
    ////img.name = "divFondo2";
    //img.scr = "../Imagenes/Cargando/MAPFRE_3D_animation.gif";
    //img.alt = "Cargando";
    //img.border = "1";


    var div2 = document.createElement('div');
    div2.type = "div";
    div2.id = "divFondo2";
    div2.className = "overlayContent";
    div2.style.left = (Tam[0] - 130) / 2 + 'px';
    div2.style.top = (Tam[1] - 162) / 2 + Scroll[1] + 'px';

    var titulo = document.createElement('h2');
    titulo.innerHTML = "Cargando...";

    var img = new Image();
    img.src = "../Imagenes/Cargando/MAPFRE_3D_animation.gif";
    img.alt = "Cargando";
    img.border = "1";

    div2.appendChild(titulo);
    div2.appendChild(img);

    //if (alt != null) img.alt = alt;
    //if (title != null) img.title = title;


    //var div2 = document.createElement('div');
    //div.name = "divFondo2";
    //div.type = "div";
    //div.id = "divFondo2";
    //div.className = "overlay";



    //document.body.appendChild(titulo);
    //document.body.appendChild(img);
    document.body.appendChild(div);
    document.body.appendChild(div2);

    //$('body').append('<div id="TB_load" ><div class="ventanaEmergente"><span class="textoVentanaEmergente">' + text + '</span><br><img id="imgCerrar"  alt="Espere" src="Images/espera.gif" /></div></div>');
    //$('#TB_load').show();           // Iniciar el cargador  
    //AplicarEstiloDropDownList();
}

function OcultarCargando() {
    //document.getElementById('divFondo').style.display = 'none';
    //document.getElementById('divFondo2').style.display = 'none';

    //$('#divFondo').remove();

    var div = document.getElementById('divFondo');
    if (div != null) {
        document.body.removeChild(div);
    }

    var div2 = document.getElementById('divFondo2');
    if (div2 != null) {
        document.body.removeChild(div2);
    }

    //AplicarEstiloDropDownList();
}

function OcultarCargandoPadre() {
    //document.getElementById('divFondo').style.display = 'none';
    //document.getElementById('divFondo2').style.display = 'none';

    //$('#divFondo').remove();

    var div = window.opener.document.getElementById('divFondo');
    if (div != null) {
        window.opener.document.body.removeChild(div);
    }

    var div2 = window.opener.document.getElementById('divFondo2');
    if (div2 != null) {
        window.opener.document.body.removeChild(div2);
    }
}

function pageLoad() {

    Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(MostrarCargando);

    Sys.WebForms.PageRequestManager.getInstance().add_endRequest(OcultarCargando);

    QuitarDivMenu('mnuMenu');


}


function PopupCenter(pageURL, title, w, h) {
    var left = (screen.width / 2) - (w / 2);
    var top = (screen.height / 2) - (h / 2);
    var targetWin = window.open(pageURL, title, 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width=' + w + ', height=' + h + ', top=' + top + ', left=' + left);
}


function TamVentana() {
    var Tamanyo = [0, 0];
    if (typeof window.innerWidth != 'undefined') {
        Tamanyo = [
            window.innerWidth,
            window.innerHeight
        ];
    }
    else if (typeof document.documentElement != 'undefined'
        && typeof document.documentElement.clientWidth !=
        'undefined' && document.documentElement.clientWidth != 0) {
        Tamanyo = [
               document.documentElement.clientWidth,
               document.documentElement.clientHeight
        ];
    }
    else {
        Tamanyo = [
            document.getElementsByTagName('body')[0].clientWidth,
            document.getElementsByTagName('body')[0].clientHeight
        ];
    }
    return Tamanyo;
}

function getScrollXY() {
    var x = 0, y = 0;
    if (typeof (window.pageYOffset) == 'number') {
        // Netscape
        x = window.pageXOffset;
        y = window.pageYOffset;
    } else if (document.body && (document.body.scrollLeft || document.body.scrollTop)) {
        // DOM
        x = document.body.scrollLeft;
        y = document.body.scrollTop;
    } else if (document.documentElement && (document.documentElement.scrollLeft || document.documentElement.scrollTop)) {
        // IE6 standards compliant mode
        x = document.documentElement.scrollLeft;
        y = document.documentElement.scrollTop;
    }
    return [x, y];
}

function AsignarValorDefecto(sender, valor) {
    strLen = sender.value.length;
    if (strLen == 0) {
        sender.value = valor;
    }
}

function ValidaNumeroDecimal(sender, e) {
    formatBox = document.getElementById(sender.id);
    strLen = sender.value.length;
    strVal = sender.value;
    hasDec = false;
    e = (e) ? e : (window.event) ? event : null;

    if (e) {
        var charCode = (e.charCode) ? e.charCode :
        ((e.keyCode) ? e.keyCode :
        ((e.which) ? e.which : 0));

        if ((charCode < 46) || (charCode == 47) || (charCode > 57)) {
            return false;
        }

        if ((charCode == 46)) {
            for (var i = 0; i < strLen; i++) {
                hasDec = (strVal.charAt(i) == '.');
                if (hasDec)
                    return false;
            }
        }
    }
    return true;
}


function ValidaNumeroDecimalNegativo(sender, e) {
    formatBox = document.getElementById(sender.id);
    strLen = sender.value.length;
    strVal = sender.value;
    hasDec = false;
    hasNeg = false;
    e = (e) ? e : (window.event) ? event : null;

    if (e) {
        var charCode = (e.charCode) ? e.charCode :
        ((e.keyCode) ? e.keyCode :
        ((e.which) ? e.which : 0));

        if ((charCode < 45) || (charCode == 47) || (charCode > 57)) {
            return false;
        }

        if ((charCode == 46)) {
            for (var i = 0; i < strLen; i++) {
                hasDec = (strVal.charAt(i) == '.');
                if (hasDec)
                    return false;
            }
        }

        if ((charCode == 45)) {
            for (var i = 0; i < strLen; i++) {
                hasNeg = (strVal.charAt(i) == '-');
                if (hasNeg)
                    return false;
            }
        }
    }
    return true;
}


function formato_numero(control, decimales, separador_decimal, separador_miles, numero_defecto, obligatorio) { // v2007-08-06
    numero = parseFloat(control.value.split(separador_miles).join(''));
    if (isNaN(numero)) {
        if (obligatorio) {
            control.value = numero_defecto;
        }
        else {
            control.value = '';
        }
        return true;
    }

    if (decimales !== undefined) {
        // Redondeamos
        numero = numero.toFixed(decimales);
    }

    // Convertimos el punto en separador_decimal
    numero = numero.toString().replace(".", separador_decimal !== undefined ? separador_decimal : ",");

    if (separador_miles) {
        // Añadimos los separadores de miles
        var miles = new RegExp("(-?[0-9]+)([0-9]{3})");
        while (miles.test(numero)) {
            numero = numero.replace(miles, "$1" + separador_miles + "$2");
        }
    }

    control.value = numero;
    return true;
}

function CorregirMinimoMaximo(sender, cantidaddecimales, valorminimo, valormaximo, nuevovalor) {

    formato_numero(sender, cantidaddecimales, '.', '', nuevovalor, true)

    var fValor = parseFloat(sender.value);
    if ((fValor < parseFloat(valorminimo)) || (fValor > parseFloat(valormaximo))) {
        sender.value = nuevovalor;
    }
}


function MOBotonVerArchivo(MO) {
    if (MO == 'S') {
        document.getElementById('ContentPlaceHolder1_trArchivo').style.display = 'table-row';
    }
    else {
        document.getElementById('ContentPlaceHolder1_trArchivo').style.display = 'none';
    }

}

//window.onresize = function () {
//    var Tam = TamVentana();
//    alert('La ventana mide: [' + Tam[0] + ', ' + Tam[1] + ']');
//};


//function fn_PostBack() {
//    MostrarCargando();
//    //document.forms["form1"].submit();
//}

//function fn_PostBack2() {
//    control = document.getElementById('ContentPlaceHolder1_Button2');
//    control.click();
//}




//function pageLoad() {

//    Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(MostrarCargando);

//    Sys.WebForms.PageRequestManager.getInstance().add_endRequest(OcultarCargando);

//}


function seleccionarTodo(obj) {
    if (obj.nodeName.toLowerCase() == 'textarea' || (obj.nodeName.toLowerCase() == 'input' && obj.type == 'text')) {
        obj.select();
        return;
    }
    if (window.getSelection) {
        var sel = window.getSelection();
        var range = document.createRange();
        range.selectNodeContents(obj);
        sel.removeAllRanges();
        sel.addRange(range);
    }
    else if (document.selection) {
        document.selection.empty();
        var range = document.body.createTextRange();
        range.moveToElementText(obj);
        range.select();
    }
}

function QuitarDivMenu(menu) {
    var menu = document.getElementById(menu);
    if (menu == null) {
        return;
    }
    var div = menu.nextSibling;
    //div.style.visibility = 'hidden';
    //div.style.backgroundColor = '#FF0000';
    //div.style.lineHeight = '0px';
    //div.style.height = '100px';
    if (div != null) {
        div.className = 'PieMenu';
    }
    //var div = document.getElementById(menu).nextSibling;
    //var menu = document.getElementById(menu);

    //menu.removeChild(div);
    //document.removeChild(div);

    var ul = document.getElementById('mnuMenu').getElementsByTagName('ul')[0];
    var li = ul.getElementsByTagName('li');

    for (var i = 0; i < li.length; i++) {
        var textoItem2 = li[i].getElementsByTagName('a')[0].innerText;
        var textoItem = li[i].getElementsByTagName('a')[0].innerHTML;
        //alert(textoItem);
        //alert(textoItem2);
        switch (textoItem) {
            case 'AUTOMOVILES':
                li[i].className = 'ItemAuto';
                break;
            case 'DOCUMENTOS':
                li[i].className = 'ItemBandeja';
                break;
            case 'TRANSPORTES':
                li[i].className = 'ItemTrans';
                break;
            case 'SOAT':
                li[i].className = 'ItemSoat';
                break;
            case 'HOGAR':
                li[i].className = 'ItemHogar';
                break;
            default:
                li[i].className = 'ItemMenu';
                break;
        }

    }

    //var li = ul.getElementsByTagName('li')[0];
    //ul.removeChild(li)
}


function Desplegar() {
    //alert('cramosc01');
    //document.getElementById('ddlNumero').focus();
    //document.getElementById('ddlNumero').click();
    //alert('cramosc02');
    //document.getElementById('ddlNumero').size = 5;
    //alert('cramosc03');
    //document.getElementById('ddlNumero').size = 1;
    //alert('cramosc02');
    //ExpandSelect("ddlMateriaAsegurada");
    //simulateMouseEvent("mousedown", document.getElementById('ddlNumero'));


    //var nouEvent = document.createEvent("MouseEvents");

    //document.getElementById('PopupAjax').click();
    //document.getElementById('ddlMateriaAsegurada').click();



    //var nouEvent = document.createEvent("MouseEvents");
    //nouEvent.initMouseEvent("click", true, true, window, 0, 0, 0, 0, 0, false, false, false, false, 0, null);
    //var objecte = document.getElementById("ddlMateriaAsegurada");
    //var canceled = !objecte.dispatchEvent(nouEvent);

    //alert(document.getElementById('ddlMateriaAsegurada').getAttribute('onclick'));
    //alert(document.getElementById('PopupAjax').getAttribute('onclick'));


    //$('ddlMateriaAsegurada').click();
    return false;
}



function simulateMouseEvent(eventName, element) {
    var evt = document.createEvent("MouseEvents");
    evt.initMouseEvent(eventName, true, true, window,
      0, 0, 0, 0, 0, false, false, false, false, 0, null);
    element.dispatchEvent(evt);
}




// <select> element displays its options on mousedown, not click.

function showDropdown(element) {
    var event;
    event = document.createEvent('MouseEvents');
    event.initMouseEvent('mousedown', true, true, window);
    element.dispatchEvent(event);
};

// This isn't magic.
function runThis() {
    var dropdown = document.getElementById('PopupAjax');
    showDropdown(dropdown);
};




function doClick() {
    var optionsSelect = document.getElementById('ddlMateriaAsegurada');
    optionsSelect.focus();
    //var WshShell = new ActiveXObject("WScript.Shell");
    //WshShell.SendKeys("%{DOWN}");

    optionsSelect.size = optionsSelect.options.length;

}


