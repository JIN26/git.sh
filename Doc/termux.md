# ¿QUE ES TERMUX? . . .

    Termux es un emulador de terminal para Android, que funciona directamente sin necesidad de rootear o realizar complicadas configuraciones.

    Al instalar Termux en tu móvil, dispondrás de un emulador de terminal para Android con un sistema base mínimo, pero que es fácilmente ampliable mediante el gestor de paquetes APT. Este gestor de paquetes es el que utilizan las distribuciones derivadas de Debian. Con lo que fácilmente podrás instalar los paquetes mas habituales en este emulador de terminal para Android.


# CARACTERÍSTICAS DE TERMUX

    Las principales características de este emulador de terminal para Android son las siguientes,

    Seguro. Te permite acceder a servidores remotos utilizando el cliente de OpenSSH. De la misma manera también te permite crear un servidor ssh, con el que conectarte a este terminal.

    Termux te permite elegir entre diferentes shell, ya sea Bash, fish, zsh, al igual que también te permite seleccionar tu editor preferido, nano, emacs, vim. Igualmente puedes utilizar herramientas como curl, o wget para realizar descargas directamente desde el terminal. O incluso, también puedes realizar copias de seguridad utilizando rsync.

    Es altamente personalizable, puesto que como te he indicado anteriormente, puedes instalar lo que necesites utilizando el gestor de paquetes APT.

    Con herramientas realmente potentes que te permitirán hacer prácticamente cualquier cosa que te imagines. Termux dispone de versiones actualizadas de Perl, Python, Ruby y Node.js.

    El único inconveniente que le puedes encontrar, es que resulta incómodo utilizar el teclado en la pantalla del móvil. Esto tiene varias soluciones como puede ser el uso de un teclado vía bluetoth o incluso WiFi keyboard (disponible en Play Store). Este último te permite escribir utilizando el teclado del ordenador, pero enviando lo que escribes directamente al móvil.

# USO Y FUNCIONAMIENTO

    Antes que nada, y para que no te dejes los ojos en el terminal, indicarte que es posible aumentar el tamaño del texto pellizancando la pantalla o disminuirlo haciendo el proceso inverso. Con esto podrás tener un tamaño de letra adecuado.

    Además del terminal, dispones de tres elementos adicionales que te permitirán trabajar con los diferentes terminales. Si has leído bien. Termux, te permite tener varios emuladores de forma simultánea. Los tres elementos que dispone Termux para gobernarlo todo son....

    - El menú contextual que aparecerá si realizas una pulsación prolongada en cualquier parte del terminal. Este menú contextual te da acceso a....

    *Copiar y pegar.

    Compartir texto desde el terminal a cualquier otra aplicación que lo acepte.

    *Resetear el terminal.

    *Hacer que el terminal sea a pantalla completa.

    *Salir de un terminal.

    Cambiar el estilo del terminal. Para ello, puedes seleccionar tanto la fuente como el esquema.

    *Mostrar la ayuda.

    - El menú de navegación que aparece si arrastramos desde la izquierda de la pantalla. Este menú de navegación, te dará acceso a...

    *Un listado de sesiones. Puedes cambiar de una sesión pulsando sobre las diferentes sesiones. Mientras que si haces una pulsación prolongada podrás cambiar el nombre de la sesión.

    *En la parte inferior del menú de navegación aparecen dos botones KEYBOARD y NEW SESSION. El primero de los botones te permitirá mostrar u ocultar el teclado. Mientras que el segundo botón te permite crear una nueva sesión. En este segundo botón, si haces una pulsación larga, puedes crear una sesión con nombre o una sesión a prueba de fallos.

    *Las notificaciones. Aparecerá una notificación cuando exista una sesión en funcionamiento. Haciendo clic en la notificación te llevará a la sesión mas reciente sobre la que hayas trabajado. La notificación se puede expandir arrastrando sobre ella. En ese caso te mostrará dos acciones diferentes:

    *Salir de todas las sesiones existentes.

    *Utilizar un modo que evitará que el móvil entre en el modo suspensión.



# USO Y FUNCIONAMIENTO DEL GESTOR DE PAQUETES

    Una vez instalado Termux, dispondrás de un sistema básico que consiste en el gestor de paquetes APT y la colección de herramientas busybox. Puedes instalar mas paquetes utilizando el gestor de paquetes.

    Para los que no conozcan el uso de APT, unas nociones básicas...

    *apt update. Actualiza la lista de paquetes disponibles.

    *apt search [loquesea]. Permite buscar entre los diferentes paquetes que hay disponibles.

    *apt install [paquete] . Para instalar un paquete.

    *apt upgrade. Para actualizar todos los paquetes que estén desfasados, y que dispongan de una versión mas actualizada de la que tenemos instalada.

    *apt show [paquete]. Muestra información relevante sobre un paquete.

    *apt list. Lista todos los paquetes disponibles.

    *apt list --installed . Lista todos los paquetes instalados en el sistema.

    *apt remove [paquete]. Permite quitar un paquete instalado en el sistema.



# ALMACENAMIENTO

    Para que todo funcione como toca en lo que se refiere al almacenamiento tanto interno como externo, el primer paso que debes hacer, es ejecutar la siguiente orden;

    $ termux-setup-storage

    De esta forma nos aseguramos que tenemos permisos para acceder al almacenamiento compartido.

    Se crea un directorio en el almacenamiento externo (en caso de que exista);

        $HOME/storage



# DIRECTORIOS PRINCIPALES.

    *Raíz "/"; La raíz de todos los directorios.

    *home (hogar): Este hogar no es más que un directorio que a su vez contiene otros, uno por cada usuario dado de alta en el sistema. Dentro de dichos directorios es donde el usuario tiene su carpeta personal, donde están los ficheros de configuración de usuario, así como los archivos personales del mismo que puede crear, modificar y eliminar bajo su propio criterio.

    *home/.root: Es el /home del administrador. Es el único /home que no está incluido -por defecto-

    *usr: Es el directorio padre de otros subdirectorios de importancia:

    *usr/bin: Conjunto de archivos ejecutables. Estos podrán ser llamados desde cualquier ruta de termux por cualquier usuario.

    *usr/etc: Almacena los archivos de configuración.

    *usr/include: Los ficheros cabeceras para C y C++.

    *usr/lib: Las bibliotecas (librerias) de los ejecutables del sistema.

    *usr/libexec: Binarios internos que no están a ser ejecutados por los usuarios.

    *usr/local: Es otro nivel dentro que ofrece una jerarquía parecida al propio diretorio /usr.

    *usr/sbin: Conjunto de archivos ejecutables. Estos podrán ser llamados desde cualquier ruta de termux sólo por el usuario ROOT.

    *usr/share: Archivos compartidos como ficheros de configuración, imágenes, iconos, etc.

    *usr/src: Tiene en su interior el código fuente para el kernel LInux.

    *usr/tmp: Archivos temporales generados en todo Termux.

    *var: Conjunto de variables de sistema y archivos temporales de duración prolongada

    *var/cache: Se almacenan datos caché de Termux.

    *var/lib: Información sobre el estado actual de los frameworks, modificable por los propios frameworks.

    *var/log: Es uno de los subdirectorios más importantes ya que aquí se guardan todo tipo de logs del sistema.

    *var/run: Información sobre el sistema desde que se inició.

    *var/spool: Datos esperando a que sean tratados por algún tipo de proceso.

    *var/service: Archivos de configuración de servicios.



# TECLADO

    *Símbolo de dolar "$": Muestra el inicio de la línea de comando.

    *Tab: Tabulador predice el texto a escribir.

    *Doble Tab: Muestra el contenido de la ruta actual.

    *Cursor:
            -Derecho; Desplaza el cursor caracter por caracter hacia la derecha.
            -Ctrl+derecho; Desplaza el cursor palabra por palabra hacia la derecha.
            -Izquierdo; Desplaza el cursor caracter por caracter hacia la derecha
            -Ctrl+izquierdo; Desplaza el cursor palabra por palabra hacia la izquierda.
            -Arriba y/o Abajo; Muestra las últimas líneas de comando ejecutadas.

    *Ctrl+r; Abre una línea de búsqueda mediante un parámetro definido.

    *Doble Ctrl+r; Muestra uno a uno los resultados de la búsqueda por Ctrl+r.

    *Ctrl+v; Pega el contenido copiado.

    *Ctrl+c; Forza la finalización de un proceso.

    *Ctrl+Alt+c; Abre una nueva ventana.

    *Ctrl+Alt+Arriba; Cambia a la ventana anterior.

    *Ctrl+Alt+Abajo; Cambia a la ventana siguiente.

    *Ctrl+Alt+m; Abre el menú de ayuda de Termux.

    *Ctrl+Alt+a; Desplaza el cursos al inicio de la línea de comando.

    *Ctrl+Alt+r; Abre la ventana de diálogo para nombrar una ventana.

    *Ctrl+o y Ctrl+j; Funciona como tecla de Enter.



# VARIABLES ENTORNO.


    Las variables entorno son cadenas que contienen información acerca del entorno para el sistema y el usuario. Estas se definen anteponiendo el símbolo de dólar "$".

    env [enviroment]; Este comando muestra las variables seteadas por el sistema.

    $PATH; En ella se especifican las rutas en las cuales el intérprete de comandos debe buscar los programas a ejecutar.

    $LANG; En ella se especifica el lenguaje a usar por el sistema.

    $PREFIX; En ella se especifica la ruta del directorio padre.
    $PWD; En ella se especifica la ruta actual donde estas situado.

    $HOME; En ella se especifica la ruta de inicio del usuario en termux

    $TMPDIR; En ella se especifica la ruta del directorio de temporales.

    $TERM; En ella se especifica la paleta de colores a usar por el sistema.

    $SHLVL; En ella se especifica el número de shells disponibles en el sistema.

    $EXTERNAL_STORAGE; En ella se especifica la ruta de la memoria externa (si existe).

    $PS1; En ella se especifica el nombre del cursor.



# COMANDOS PRINCIPALES

    Cada comando cuenta con su menú de ayuda y le podrás desplegar con el argumento "--help" o "-h".

        Eje; $ ls --help

    Por ello te invito a ser autodidacta y explores los diferentes argumentos que brindan cada uno de los comandos. Ya que en esta ocasión sólo trabajaremos con los más esenciales;

    Change Directory "cd": Desplaza al usuarios hacia un directorio específico, aunque si no se le especifica uno, le desplaza al directorio HOME.

    List "ls": Lista el contenido de un directorio.

    Print Working Directory "pwd"; Muestra el directorio donde se está trabajando actualmente.

    Make Directory "mkdir"; Crea un directorio.

    eje1: árbol de directorios
    $ mkdir -p dir1/{dir2/a,dir3/{b,c,d}}
    $ tree
    dir1
    ├── dir2
    │   └── a
    └── dir3
        ├── b
        ├── c
        └── d

    Touch; Crea un archivo vació.

    Mayor que ">"; Toma la salida del comando previo y la utiliza como entrada en el archivo argumentado, sobre escribiendolo.

    Doble Mayor que ">>"; Toma la salida del comando previo y la utiliza como entrada en el archivo argumentado, anexandole al contenido de este.

    Concatenate "cat"; Concatena y/o muestra el contenido de un archivo específico.

    Mover "mv"; Mueve o renombra un archivo o directorio.

    Remove "rm"; Remueve (elimina) un archivo o directorio en caso de brindar el argumento recursivo (-r).

    Copy "cp"; Copia archivos y/o directorios.

    Link "ln"; Crea un enlace simbólico o acceso directo.

    Execute "exec"; Ejecuta binarios sin número de proceso.

    Set out "set"; Muestra todas las variables entorno incluyendo las asignadas por el usuario.

    Unset out "unset"; Elimina variables entorno.

    Export; Exporta variables de entorno global.

    eje: $ export SALUDO="Buenos dias"
        $ echo $SALUDO
            Buenos días

    Tree; Muestra un árbol de todas las carpetas, partiendo desde la ruta actual o desde un directorio específico.
    Pipe "|"; Consiste en unir 2 comandos, con lo cual  podemos tomar la salida del 1er comando y utilizarlo como entrada en el 2do.

    Global Regular Expresion and Print
    "grep"; Filtrador de búsqueda de la salida estándar o archivo, e imprime las líneas que contengan coincidencias del argumento específicado.

    find; Encuentra la ubicación física de un archivo bajo una jerarquía de comandos

    whereis; Encuentra la ubicación física de un archivos ejecutables.

    locate; Encuentra la ubicación física de cualquier fichero en todo el sistema

    whoami; Arroja el nombre del usuario activo

    Change Owner "chown"; permite cambiar el propietario de un archivo o directorio.

    eje: $ chown usuario:usuario [archivo o directorio]

    Change Module "chmod"; permite cambiar los permisos de acceso de un archivo o directorio

    eje1: $ chmod +[w,r,x] [archivo]
    eje2: $ chmod -[w,r,x] [archivo]
    eje3: $ chmod [permisos en alfanumerico] [archivo]

    *Alfanumerico:
    read=r=4 write=w=2 execute=x=1
    Owner     Group    All_user
    rwx        rx          x
    4+2+1      4+2         1
        7         6          1

    Process "ps"; Muestra todos los procesos activos en el sistema.



# SERVIDORES PARA TERMUX

    Con Termux tienes sin lugar a dudas un verdadero terminal para Android. Ya que te permite disponer de un cliente y un servidor SSH y/o PHP. Con lo que no necesitarás de otras aplicaciones.


    *SSH

    Para hacer uso del cliente y del servidor tienes que instalar el paquete openssh. Para ello, ejecuta la siguiente orden;

    $ apt install openssh

    El servidor SSH se inicia con la orden;    $ sshd    y utiliza el puerto 8022 por de faul. El inconveniente es que no funciona mediante contraseñas, sino que tienes que utilizar claves autorizadas (hash), por lo que se debe autorizar una clave ejecutando la siguiente orden;

    $ ~/.ssh/authorized_keys

    Use    $ ssh-keygen     para generar uno nuevo si lo desea.

    Ahora ya puede iniciar el servidor ejecutando la orden;

    $ sshd

    La cual iniciará en el puerto predeterminado 8022, despues se debe ejecutar la orden;

    $ logcat -s 'syslog:*'

    Esta ultima nos sirve para ver el resultado de registro del proceso del servidor. 

    Una vez instalado ya puedes utilizar tanto el cliente como el servidor. En el caso del cliente, puedes utilizar un script llamado ssha que te permite conectarte sin contraseñas.

    Para detener el servidor sólo gire la orden;

    $ pkill sshd


    * PHP

    Para hacer uso del cliente y del servidor tienes que instalar los paquetes php y termux-api. Para ello, ejecuta la siguiente orden;

    $ apt install php termux-api -y

    Puede ejecutar PHP y hacer que funcione como un servidor web que ejecuta sus scripts PHP al lado del directorio raíz de su proyecto almacenado en el sistema de archivos de memoria de su dispositivo.

    Para ello hay que crear el directorio raíz de nuestro servidor PHP ejecutando la siguiente orden;

    $ mkdir -p $HOME/php/rootdirectory

    En Termux, para iniciar el servidor web de desarrollo incrustado en PHP ejecute la siguiente orden;

    $ php -S dir_ip:puerto -t $HOME/php/rootdirectory/

    Si usa una dirección que es  0.0.0.0 , el servidor escuchará cualquiera de las direcciones IP de la red del dispositivo. si la dirección es 127.0.0.1 , el servidor solo escucha las conexiones locales (dentro del dispositivo o teléfono).

    El puerto debe ser cualquier número superior a 1024. el directorio raíz es la ruta base que sirve como directorio web raíz, con todos los recursos, incluidos JavaScript, imágenes, hojas de estilo CSS, archivos HTML y scripts PHP.



# QUE ES TMUX Y SU USO.

    Tmux es un multiplexador de terminales; permite lanzar múltiples terminales (ventanas y paneles) dentro de única pantalla (sesión de consola, sesión telnet/ssh, pestaña de terminal en TERMUX). Cada terminal es totalmente gestionable y separada de las demás: podemos cambiar entre ellas y lanzar procesos, crear paneles dentro de cada ventana, etc.

    *INSTALACION

    $ pkg install tmux -y

    *INICIAR TMUX

    Inicio básico

    $ tmux

    Iniciar una nueva sesión con el nombre:

    $ tmux new -s nombre_de_la_session

    Attach:

    $ tmux attach

    Attach la session con el nombre:

    $ tmux a -t nombre_de_la_session

    Listar sessiones:

    $ tmux ls # (list-sessions)

    Destruir una sesión determinada:

    $ tmux kill-session -t
        nombre_de_la_session

    Destruir las sessiones de todos los usuarios:

    $ tmux kill-server


        En tmux, para realizar las diferentes acciones, se utiliza un atajo de teclado que permite enviarle comandos a tmux para crear o eliminar ventanas o divisiones en las ventanas (paneles), o movernos a la anterior (previous) o siguiente (next).

            Por defecto, estas son las combinaciones de teclado básicas:

    Menú de ayuda.

    Ctrl+B+?

    Crear una nueva ventana (c de create).

    Ctrl+B+c

    Cambiar a la ventana siguiente (n de next).

    Ctrl+B+n

    Cambiar a la ventana anterior (p de previous).

    Ctrl+B+p

    Cambiar a la ventana número NUMERO.

    Ctrl+B+NUMERO

    Cambiar el nombre de la sesión (conjunto de ventanas) actual.

    Ctrl+B+$

    Cambiar el nombre de la ventana (pestaña) para que no cambie automáticamente según lo que estamos ejecutando en ella.

    Ctrl+B+,

    Cerrar la ventana actual
    (aunque con un exit se cierra).

    Ctrl+B+&

    Cerrar el panel actual.

    Ctrl+B+x

    Poner tmux en 2do plano (background).

    Ctrl+B+d

    Regresar tmux a 1er plano.

    $ tmux attach



# GESTOR DE PANELES

    Dividir verticalmente la ventana actual en dos paneles

    > Ctrl+B+%

    Dividir horizontalmente la ventana actual en dos paneles.

    > Ctrl+B+”

    Moverse entre paneles (al de arriba, abajo, etc)

    > Ctrl+B+cursor

    Moverse cíclicamente entre paneles.

    > Ctrl+B+o


    Convertir el panel actual en una ventana completa individual.

    > Ctrl+B+!

    Mostrar brevemente los números identificativos de cada panel.

    > Ctrl+B+q

    Mostrar un reloj digital en el panel actual.

    > Ctrl+B+t

    Intercambiar el panel actual con el anterior.

    > Ctrl+B+{

    Intercambiar el panel actual con el siguiente.

    > Ctrl+B+}

    Moverse al último panel activo.

    > Ctrl+B+;

# ¿ QUÉ ES PS1 ?

    El símbolo del sistema y el aspecto del terminal están gobernados por una variable de entorno denominada PS1. De acuerdo con la página de manual Bash, PS1 representa la cadena de solicitud principal que se muestra cuando el shell está listo para leer un comando.

    El contenido permitido en PS1 consta de varios caracteres especiales de escape invertido cuyo significado se muestra en este manual.

    Para intentar ilustrar, vamos a mostrar el contenido actual de PS1 en nuestro Termux ejecutando la orden;

    $ echo $PS1

    Ahora, explicaremos cómo personalizar PS1 según nuestras necesidades.

    De acuerdo con la sección PROMPTING en la página de manual de Termux-wiki, este es el significado de cada carácter especial:

    \u: el nombre de usuario del usuario actual.

    \h: el nombre de host hasta el primer punto (.) En el nombre de dominio completo.

    \W: el nombre de base del directorio de trabajo actual, con $ HOME abreviado con un tilde (~).

    \$: Si el usuario actual es root, muestra #, $ en caso contrario.

    Por ejemplo, es posible que se quiera considerar la posibilidad de agregar \! si queremos mostrar el número del historial del comando actual, o \H si queremos mostrar el FQDN en lugar del nombre del servidor corto.

    Por ejemplo, podemos importar ambos a nuestro entorno actual ejecutando este comando:

    $ PS1=“[\u@\H\W\!] \ $ ”        

    Al presionar Enter, verá que el contenido del mensaje cambia como se muestra a continuación. Compare el mensaje antes y después de ejecutar el comando anterior.

    Ahora vamos un paso más allá y cambiamos el color del usuario y el nombre de host en el símbolo del sistema, tanto el texto como el fondo que lo rodea. En realidad, se pueden alterar tres patrones:

    1. El formato del texto con: 0 (Texto normal), 1 (Negrita) y 4 (subrayado).

    2. Color del primer plano (texto): 30 (Negro), 31 (Rojo), 32 (Verde), y así hasta llegar al 37 (Blanco).

    3. Color de Fondo: 40 (Negro), 41 (Rojo), 42 (Verde), hasta llegar al 47 (Blanco).

    Utilizaremos el carácter especial de "\e" al principio y una "m" al final para indicar que lo que sigue es una secuencia de color. En esta secuencia, los tres valores (fondo, formato y primer plano) se separan por punto y comas ";" (si no se da valor, se asume el valor predeterminado).

    Además, dado que los rangos de valores son diferentes, no importa cuál (fondo, formato o primer plano) se especifique primero. Por ejemplo, la siguiente PS1 hará que el mensaje aparezca en texto subrayado amarillo con fondo rojo:

    PS1=“\e[41;4;33m[\u@\h\W] $ ”

    Tan buena como parece, esta personalización sólo durará para la sesión actual, si cierra su Termux o sale de la sesión, los cambios se perderán.

    Por lo tanto para que estos cambios sean permanentes, deberá añadir la línea de comando deseado al archivo bash.bashrc ubicado en la carpeta encargada en contener los archivos de configuración de Termux.

    eje:
        PS1=“\e[41;4;33m[\u@\h\W] $ ”

    ........


    DE MI PARTE SERÍA TODO POR HOY , ME DESPIDO DE USTEDES PERO NO SIN ANTES INVITARLES A VER EL CURSO DE ESTÁ GUÍA EN MI CANAL DE YOUTUBE EN ...

    https://www.youtube.com/c/Ivam3byCinderella

    NO LO OLVIDEN EL CONOCIMIENTO ES LIBRE COMPÁRTELO.

    SOY IVAM3, CONTACTAME EN ...

    https://t.me/Ivam3by_Cinderella

    HAAASTA LUEGO SHAO!! SHAO!!

