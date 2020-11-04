# contantes
    define(name, value, case-insensitive)

# array
    $names = array("David", "Amy", "John");
    $myArray[0] = "John";
    $myArray[1] = "<strong>PHP</strong>";

# array asociativos
    $people = array("David"=>"27", "Amy"=>"21", "John"=>"42");

    $people['David'] = "27";
    $people['Amy'] = "21";
    $people['John'] = "42";

# array mutidimensionales
    $people = array(
      'online'=>array('David', 'Amy'),
      'offline'=>array('John', 'Rob', 'Jack'),
      'away'=>array('Arthur', 'Daniel')
    );
     echo $people['online'][0]; //Outputs "David"
     echo $people['away'][1]; //Outputs "Daniel"

# foreach
    $names = array("John", "David", "Amy");
    foreach ($names as $name) {
    echo $name.'<br />';
    }

# continue
    for ($i=0; $i<10; $i++) {
    if ($i%2==0) {
        continue;
    }
    echo $i . ' ';
    }

# include vs require
    Utiliza require 'file.php'; cuando el archivo sea necesario para que la aplicación se ejecute.
    Utiliza include 'file.php'; cuando el archivo no sea necesario. La aplicación debería continuar, incluso cuando el archivo no se encuentre.

# function
    function mult($num1, $num2=10) {
    $res = $num1 * $num2;
    return $res;
    }
    echo mult(8, 3);
