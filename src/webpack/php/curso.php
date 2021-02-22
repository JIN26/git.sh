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
</body>
</html>
