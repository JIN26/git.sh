/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var lugar=parseFloat(document.getElementById("lugar").value);
var peso = parseFloat(document.getElementById("peso").value);
var planeta = new Array("Marte","Jupiter","este planeta no existente");
var gravedad = new Array(9.8,3.7,24.8);
var pesoFinal;

switch(lugar){
    case 1:
        pesoFinal = parseFloat(peso * gravedad[1] / gravedad[0]);
    break;
    case 2:
        pesoFinal = parseFloat(peso * gravedad[2] / gravedad[0]);
    break;
    default:
        lugar=3;
        pesoFinal = "No calculable";
    break;
}
var ruta = window.location;
console.log(ruta);

var teclas = {
  UP: 38,
  DOWN: 40,
  LEFT: 37,
  RIGHT: 39
};

var x = 150;
var y = 150;


document.addEventListener("keydown", dibujarTeclado);
var marco = document.getElementById("Imagen");
var lienzo = marco.getContext("2d");
yFinal = marco.width;

marco.addEventListener('mousedown', marcadorPuesto);
marco.addEventListener('mousemove', trazo);
marco.addEventListener('mouseup', alzar);
var tinta = "green";
var movimiento = false;

function marcadorPuesto(){
    movimiento = true;
}
function alzar(){
  movimiento = false;
}
function trazo(evento) {
    console.log(evento);
  if (movimiento) {
    x = evento.offsetX;
    y = evento.offsetY;
    dibujarLinea(tinta, x, y, x-1, y-1, lienzo);
  }
}
var fechaNacimiento = document.getElementById("linea");
var button = document.getElementById("button");

button.addEventListener("click", edadActual);
dibujarLinea(tinta, x-1, y-1, x+1, y+1, lienzo);

function edadActual(){
    edad = (parseInt(fechaNacimiento.value) - 2019)*-1;

    for(i=0;i<yFinal;i+=yFinal/edad){
        dibujarLinea(tinta,0+i,0,yFinal-1,yFinal/edad+i,lienzo);
    }

    for(i=0;i<yFinal;i+=yFinal/edad){
        dibujarLinea(tinta,0,0+i,yFinal/edad+i,yFinal-1,lienzo);
    }
    marco("black");
}

function marco(color){
    dibujarLinea(color, 1,1,1,yFinal-1,lienzo);
    dibujarLinea(color, 1,yFinal-1,yFinal-1,yFinal-1,lienzo);
    dibujarLinea(color,1,1,yFinal-1,1,lienzo);
    dibujarLinea(color,yFinal-1,0,yFinal-1,yFinal-1,lienzo);
}

function dibujarLinea(color, xI, yI, xF, yF, lienzo){
    lienzo.beginPath();
    lienzo.strokeStyle = color;
    lienzo.linewidth = 3;
    lienzo.moveTo(xI, yI);
    lienzo.lineTo(xF, yF);
    lienzo.stroke();
    lienzo.closePath();
}

function dibujarTeclado(evento){

    var pinta = "green";
    var movimiento = 5;
    switch(evento.keyCode){

        case teclas.UP:
            dibujarLinea(pinta, x, y, x, y - movimiento, lienzo);
            y = y - movimiento;
            console.log(teclas.UP);
        break;
        case teclas.DOWN:
            dibujarLinea(pinta, x, y, x, y + movimiento, lienzo);
            y = y + movimiento;
        break;
        case teclas.LEFT:
            dibujarLinea(pinta, x, y, x - movimiento, y, lienzo);
            x = x - movimiento;
        break;
        case teclas.RIGHT:
            dibujarLinea(pinta, x, y, x + movimiento, y, lienzo);
            x = x + movimiento;
        break;
    }
}

document.write("Tu peso en "+planeta[--lugar]+" es  <strong> "+ pesoFinal + " kilos</strong>");

function displayMessage(msgText, msgType) {
    if (msgText !== '') {
      var html = document.querySelector('html');

      var panel = document.createElement('div');
      panel.setAttribute('class', 'msgBox');
      html.appendChild(panel);

      var msg = document.createElement('p');
      msg.textContent = msgText;
      panel.appendChild(msg);

      var closeBtn = document.createElement('button');
      closeBtn.textContent = 'x';
      panel.appendChild(closeBtn);

      closeBtn.onclick = function() {
        panel.parentNode.removeChild(panel);
      }

      if(msgType === 'warning') {
        msg.style.backgroundImage = 'url(icons/warning.png)';
        panel.style.backgroundColor = 'red';
      } else if (msgType === 'chat') {
        msg.style.backgroundImage = 'url(icons/chat.png)';
        panel.style.backgroundColor = 'aqua';
      } else {
        msg.style.paddingLeft = '20px';
      }
    }
  }

  var ctrlMsgText = document.querySelector('.box-text input');
  var userMsgText = ctrlMsgText.value;

  ctrlMsgText.onchange = function(e) {
    userMsgText = e.target.value;
  }

  var ctrlMsgType = document.querySelector('.box-type fieldset')
                             .elements;

  var userMsgType;

  function checkedBtn(e) {
    if (e.target.checked) {
      userMsgType = e.target.id;
    }
  }

  for (let i = 0; i < ctrlMsgType.length; i++) {
    ctrlMsgType.item(i).oninput = checkedBtn;
  }

  var button = document.querySelector('button');
  button.onclick = function() {
    displayMessage(userMsgText, userMsgType);
  }; 
