<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Note</title>
</head>
<body>
    <a herf="Doc/vim.md">comando</a>
    <?php
        //ejemplo de uso de getenv()
        $ip=getenv('REMOTE_ADDR');
        echo("IP: $ip::");
        //uso de una variable global ($_SERVER o $ENV)
        $ip=$_SERVER['REMOTE_ADDR'];
        echo("IP: $ip::");
    ?>
    <?php phpinfo();?>
    </body>
</html>
