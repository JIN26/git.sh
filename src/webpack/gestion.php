<?php
    echo "das";
    if(isset($_POST['submit'])){
        echo "hi ".$_POST['name'];
        echo "hi ".$_POST['password'];

    }
    /*define ("CI",1);
    echo "hola".CI;
    $datoFile = "dato.txt";
    $file = fopen($datoFile,"a+");
    $read = file('dato.txt');
    foreach($read as $line){
        echo $line.",";
    }*/

?>
