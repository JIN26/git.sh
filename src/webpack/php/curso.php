<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<style>
		.resaltar{
			color:#F00;
			font-weigh:bold;
		}
	</style>
</head>
<body>
	<?php

		$Cliente = "Pedro";
		$cont;

		function mostrar(){
			static $cont=0;
			global $Cliente;
			$Cliente ="juan";
			if(strcasecmp($Cliente,"JUAN")){//si son iguales en mayusculas
				echo "hi";
			}
			else if(strcmp($Cliente,"JUAN")){//si son iguales sin importar mayusculas
				echo "<p class='resaltar'>$cont</p>";
			}
			$cont++;
		}

		mostrar();

		echo "hola $Cliente <br><br>";
		/*ip local del sevidor*/
		include "ip.php";
		include "info.php";
	?>
		<!--fecha
			<div>php/fecha.html</div>
			<div class="FromInput">
				<label class="FromImput-label" aria-hidden="true">Sexo</label>
				<span data-type="radio" data-name="gender_wrapper">
					<span>
						<input type="radio" name="sex" value="1">
						<label>Mujer</label>
					</span>
					<span>
						<input type="radio" name="sex" value="2">
						<label>Hombre</label>
					</span>
					<span>
						<input type="radio" name="sex" value="-1">
						<label>Personalizado</label>
					</span>
				</span>
			</div>

			<textarea name="comentario" rows="10" cols="40">Escribe tu commentario...</textarea>
			<input  id="linea" type="text" data-type="text" name="fistname" value="Nombre" aria-required="true" placeholder="Nombre" required minlength="4"/>
		<div class="FromInput">
			<a href="php/registro.php">Registro</a>
		</div>

		<svg classs="face" viewBox="0 0 496 512" width="100" title="angry">
			<path d="M248 8C111 8 0 119 0 256s111 248 248 248 248-111 248-248S385 8 248 8zM136 240c0-9.3 4.1-17.5 10.5-23.4l-31-9.3c-8.5-2.5-13.3-11.5-10.7-19.9 2.5-8.5 11.4-13.2 19.9-10.7l80 24c8.5 2.5 13.3 11.5 10.7 19.9-2.1 6.9-8.4 11.4-15.3 11.4-.5 0-1.1-.2-1.7-.2.7 2.7 1.7 5.3 1.7 8.2 0 17.7-14.3 32-32 32S136 257.7 136 240zm168 154.2c-27.8-33.4-84.2-33.4-112.1 0-13.5 16.3-38.2-4.2-24.6-20.5 20-24 49.4-37.8 80.6-37.8s60.6 13.8 80.6 37.8c13.8 16.5-11.1 36.6-24.5 20.5zm76.6-186.9l-31 9.3c6.3 5.8 10.5 14.1 10.5 23.4 0 17.7-14.3 32-32 32s-32-14.3-32-32c0-2.9.9-5.6 1.7-8.2-.6.1-1.1.2-1.7.2-6.9 0-13.2-4.5-15.3-11.4-2.5-8.5 2.3-17.4 10.7-19.9l80-24c8.4-2.5 17.4 2.3 19.9 10.7 2.5 8.5-2.3 17.4-10.8 19.9z" />
		</svg>
		<svg class="face" height="100" width="100">
			<circle cx="50" cy="50" r="50" fill="#FDD835"/>
			<circle cx="30" cy="30" r="10" fill="#FFFFFF"/>
			<circle cx="70" cy="30" r="10" fill="#FFFFFF"/>
			<circle cx="30" cy="30" r="5" fill="#000000"/>
			<circle cx="70" cy="30" r="5" fill="#000000"/>
			<path d="M 30 70 q 20 20 40 0" stroke="#FFFFFF" stroke-width="5" fill="none" />
		</svg>
		<svg viewBox="0 0 576 512" width="400" title="biohazard">
			<path d="M287.9 112c18.6 0 36.2 3.8 52.8 9.6 13.3-10.3 23.6-24.3 29.5-40.7-25.2-10.9-53-17-82.2-17-29.1 0-56.9 6-82.1 16.9 5.9 16.4 16.2 30.4 29.5 40.7 16.5-5.7 34-9.5 52.5-9.5zM163.6 438.7c12-11.8 20.4-26.4 24.5-42.4-32.9-26.4-54.8-65.3-58.9-109.6-8.5-2.8-17.2-4.6-26.4-4.6-7.6 0-15.2 1-22.5 3.1 4.1 62.8 35.8 118 83.3 153.5zm224.2-42.6c4.1 16 12.5 30.7 24.5 42.5 47.4-35.5 79.1-90.7 83-153.5-7.2-2-14.7-3-22.2-3-9.2 0-18 1.9-26.6 4.7-4.1 44.2-26 82.9-58.7 109.3zm113.5-205c-17.6-10.4-36.3-16.6-55.3-19.9 6-17.7 10-36.4 10-56.2 0-41-14.5-80.8-41-112.2-2.5-3-6.6-3.7-10-1.8-3.3 1.9-4.8 6-3.6 9.7 4.5 13.8 6.6 26.3 6.6 38.5 0 67.8-53.8 122.9-120 122.9S168 117 168 49.2c0-12.1 2.2-24.7 6.6-38.5 1.2-3.7-.3-7.8-3.6-9.7-3.4-1.9-7.5-1.2-10 1.8C134.6 34.2 120 74 120 115c0 19.8 3.9 38.5 10 56.2-18.9 3.3-37.7 9.5-55.3 19.9-34.6 20.5-61 53.3-74.3 92.4-1.3 3.7.2 7.7 3.5 9.8 3.3 2 7.5 1.3 10-1.6 9.4-10.8 19-19.1 29.2-25.1 57.3-33.9 130.8-13.7 163.9 45 33.1 58.7 13.4 134-43.9 167.9-10.2 6.1-22 10.4-35.8 13.4-3.7.8-6.4 4.2-6.4 8.1.1 4 2.7 7.3 6.5 8 39.7 7.8 80.6.8 115.2-19.7 18-10.6 32.9-24.5 45.3-40.1 12.4 15.6 27.3 29.5 45.3 40.1 34.6 20.5 75.5 27.5 115.2 19.7 3.8-.7 6.4-4 6.5-8 0-3.9-2.6-7.3-6.4-8.1-13.9-2.9-25.6-7.3-35.8-13.4-57.3-33.9-77-109.2-43.9-167.9s106.6-78.9 163.9-45c10.2 6.1 19.8 14.3 29.2 25.1 2.5 2.9 6.7 3.6 10 1.6s4.8-6.1 3.5-9.8c-13.1-39.1-39.5-72-74.1-92.4zm-213.4 129c-26.5 0-48-21.5-48-48s21.5-48 48-48 48 21.5 48 48-21.5 48-48 48z" />
		</svg>
		<svg viewBox="0 0 640 512" width="100" title="terminal">
			<path d="M257.981 272.971L63.638 467.314c-9.373 9.373-24.569 9.373-33.941 0L7.029 444.647c-9.357-9.357-9.375-24.522-.04-33.901L161.011 256 6.99 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L257.981 239.03c9.373 9.372 9.373 24.568 0 33.941zM640 456v-32c0-13.255-10.745-24-24-24H312c-13.255 0-24 10.745-24 24v32c0 13.255 10.745 24 24 24h304c13.255 0 24-10.745 24-24z" />
		</svg>

		<svg viewBox="0 0 496 512" width="100" title="globe-americas">
			<path d="M248 8C111.03 8 0 119.03 0 256s111.03 248 248 248 248-111.03 248-248S384.97 8 248 8zm82.29 357.6c-3.9 3.88-7.99 7.95-11.31 11.28-2.99 3-5.1 6.7-6.17 10.71-1.51 5.66-2.73 11.38-4.77 16.87l-17.39 46.85c-13.76 3-28 4.69-42.65 4.69v-27.38c1.69-12.62-7.64-36.26-22.63-51.25-6-6-9.37-14.14-9.37-22.63v-32.01c0-11.64-6.27-22.34-16.46-27.97-14.37-7.95-34.81-19.06-48.81-26.11-11.48-5.78-22.1-13.14-31.65-21.75l-.8-.72a114.792 114.792 0 0 1-18.06-20.74c-9.38-13.77-24.66-36.42-34.59-51.14 20.47-45.5 57.36-82.04 103.2-101.89l24.01 12.01C203.48 89.74 216 82.01 216 70.11v-11.3c7.99-1.29 16.12-2.11 24.39-2.42l28.3 28.3c6.25 6.25 6.25 16.38 0 22.63L264 112l-10.34 10.34c-3.12 3.12-3.12 8.19 0 11.31l4.69 4.69c3.12 3.12 3.12 8.19 0 11.31l-8 8a8.008 8.008 0 0 1-5.66 2.34h-8.99c-2.08 0-4.08.81-5.58 2.27l-9.92 9.65a8.008 8.008 0 0 0-1.58 9.31l15.59 31.19c2.66 5.32-1.21 11.58-7.15 11.58h-5.64c-1.93 0-3.79-.7-5.24-1.96l-9.28-8.06a16.017 16.017 0 0 0-15.55-3.1l-31.17 10.39a11.95 11.95 0 0 0-8.17 11.34c0 4.53 2.56 8.66 6.61 10.69l11.08 5.54c9.41 4.71 19.79 7.16 30.31 7.16s22.59 27.29 32 32h66.75c8.49 0 16.62 3.37 22.63 9.37l13.69 13.69a30.503 30.503 0 0 1 8.93 21.57 46.536 46.536 0 0 1-13.72 32.98zM417 274.25c-5.79-1.45-10.84-5-14.15-9.97l-17.98-26.97a23.97 23.97 0 0 1 0-26.62l19.59-29.38c2.32-3.47 5.5-6.29 9.24-8.15l12.98-6.49C440.2 193.59 448 223.87 448 256c0 8.67-.74 17.16-1.82 25.54L417 274.25z" />
		</svg>
		<svg viewBox="0 0 640 512" width="100" title="code">
			<path d="M278.9 511.5l-61-17.7c-6.4-1.8-10-8.5-8.2-14.9L346.2 8.7c1.8-6.4 8.5-10 14.9-8.2l61 17.7c6.4 1.8 10 8.5 8.2 14.9L293.8 503.3c-1.9 6.4-8.5 10.1-14.9 8.2zm-114-112.2l43.5-46.4c4.6-4.9 4.3-12.7-.8-17.2L117 256l90.6-79.7c5.1-4.5 5.5-12.3.8-17.2l-43.5-46.4c-4.5-4.8-12.1-5.1-17-.5L3.8 247.2c-5.1 4.7-5.1 12.8 0 17.5l144.1 135.1c4.9 4.6 12.5 4.4 17-.5zm327.2.6l144.1-135.1c5.1-4.7 5.1-12.8 0-17.5L492.1 112.1c-4.8-4.5-12.4-4.3-17 .5L431.6 159c-4.6 4.9-4.3 12.7.8 17.2L523 256l-90.6 79.7c-5.1 4.5-5.5 12.3-.8 17.2l43.5 46.4c4.5 4.9 12.1 5.1 17 .6z" />
		</svg>
		</br>
		<a href="../README.md">comando</a>
	        <ul>
                    <li><a href="#azul">AZUL</a></li>
                    <li><a href="#rojo">ROJO</a></li>
                    <li><a href="#amarillo">AMARILLO</a></li>
                    <li><a href="#verde">VERDE</a></li>
            </ul>
            <hr/>

            <h2>AZUL</h2>

            <img id="azul" src="imagenes/azul.png" width="300" height="300"/>
            <hr/>
            <h2 >ROJO</h2>
            <img id="rojo" src="imagenes/rojo.jpg" width="300" height="300"/>
            <hr/>
            <h2 >AMARILLO</h2>
            <img id="amarillo" src="imagenes/amarillo.jpg" width="300" height="300"/>
            <hr/>
            <h2 >VERDE</h2>
            <img id="verde"src="imagenes/verde.png" width="300" height="300"/>


			<!-- header start
			<div id="header" class="section">
				<img alt="" class="img-circle" src="https://code.sololearn.com/Icons/Avatars/0.jpg">
				<p>Alex Simpson</p>
			</div>
			<!-- header end -->

			<!-- About Me section start
			<div class="section">
				<h1><span>About Me</span></h1>
				<p>
					Hey! I'm <strong>Alex</strong>. Coding has changed my world. It's not just about apps. Learning to code gave me <i>problem-solving skills</i> and a way to communicate with others on a technical level. I can also develop websites and use my coding skills to get a better job. And I learned it all at <strong>SoloLearn</strong> where they build your self-esteem and keep you motivated. Join me in this rewarding journey. You'll have fun, get help, and learn along the way!
				</p>
				<p class="quote">"Declare variables, not war"</p>
			</div>
			About Me section end

			My Schedule section start
			<div class="section">
				<h1><span>My Coding Schedule</span></h1>
				<table>
					<tr>
						<th>Day</th>
						<th>Mon</th>
						<th>Tue</th>
						<th>Wed</th>
						<th>Thu</th>
						<th>Fri</th>
					</tr>
					<tr>
						<td>8-8:30</td>
						<td class="selected">Learn</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>9-10</td>
						<td></td>
						<td class="selected">Practice</td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>1-1:30</td>
						<td></td>
						<td></td>
						<td class="selected">Play</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>3:45-5</td>
						<td></td>
						<td></td>
						<td></td>
						<td class="selected">Code</td>
						<td></td>
					</tr>
					<tr>
						<td>6-6:15</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td class="selected">Discuss</td>
					</tr>
				</table>
			</div>
			My Schedule section end


			My Skills section start
			<div class="section">
				<h1><span>My Skills</span></h1>
				<ul>
					<li>HTML <br />
						<progress min="0" max="100" value="80"></progress>
					</li>
					<li>JavaScript <br />
						<progress min="0" max="100" value="50"></progress>
					</li>
					<li>Python <br />
						<progress min="0" max="100" value="30"></progress>
					</li>
				</ul>
			</div>
			My Skills section end


			 Media section start
			<div class="section">
				<h1><span>My Media</span></h1>
				<iframe height="150" width="300" src="https://www.youtube.com/embed/Q6_5InVJZ88" allowfullscreen frameborder="0"></iframe>
			</div>
			Media section end

			Form section start
		   <div class="section">
				<h1><span>Contact Me</span></h1>
				<form>
					<input name="name" placeholder="Name" type="text" required /><br/>
					<input name="email" placeholder="Email" type="email" required /><br/>
					<textarea name="message" placeholder="Message" required ></textarea>
					<input type="submit" value="SEND" class="submit" />
				</form>
			</div>
			Form section end

			Contacts section start
			<div class="section" id="contacts">
				<h1><span>Follow Me</span></h1>
				<div>
					<a href="https://www.sololearn.com/" target="_blank">
						<img alt="SoloLearn" src="https://www.sololearn.com/Uploads/icons/sololearn.png" />
					</a>
					<a href="#">
						<img alt="Facebook" src="https://www.sololearn.com/Uploads/icons/facebook.png"/>
					</a>
					<a href="#">
						<img alt="Twitter" src="https://www.sololearn.com/Uploads/icons/twitter.png" />
					</a>
				</div>
			</div>
			Contacts section end

			<div clas="copyright">
				&copy; 2017 My Blog. All rights reserved.
			</div>

			<h1><code>Tu peso en otro planeta</code></h1>
			<p>
				En marte pesas distinto en la <strong>tierra</strong> <br />
				Elige tu planeta <br /> 1 es Marte , 2 es Jupiter <br />
				<input type="text" id="lugar"/>
				<br />¿Cual es tu peso?<br />
				<input type="text" id="peso"/>
			</p>
			<from autocomplete="off">
 				</from>
			<canvas width="300" height="300" id="Imagen"></canvas>

			<form autocomplete="off">
			<div class="box-text">
				<label for="msg-text">Enter the message text:</label>
				<input type="text" id="msg-text" name="msg-text" required minlength="1">
			</div>
			<div class="box-type">
				<fieldset>
					<legend>Select the message type:</legend>

					<input type="radio" id="normal" name="msg-type" checked>
					<label for="msg-type-normal">Normal</label>

					<input type="radio" id="chat" name="msg-type">
					<label for="msg-type-chat">Chat</label>

					<input type="radio" id="warning" name="msg-type">
					<label for="msg-type-warning">Warning</label>
				</fieldset>
				</div>
				<button type="button">Display message box</button>
			</form>

			<script src="js\abc.js" ></script>
			<script src="js\comportamiento.js" ></script>


			<a href = "php/info.php">PHP</a> -->

</body>
</html>
