# Commands git

    $ git help =
    {commands help}

    $ git --version =
    { ver la version del git}

    $ git config --global alias.l "log" =
    {crea un alias para usar los
    commands mas rapido }

    $ git config =
    {muestra las configuracions
    [-l] user confiration characteristics
    [--global] use global config file
    [user.name "JIN26"] git username
    [user.email "Angelmantilla26@gmail.com]
    git email}

    $ git init =
    {iniciar un repositorio}

    $ git clone =
    {clonar un repositorio}

    $ git add README.md =
    {agregar un archivo al especifico
    al repositorio
    [.][-A][--all] agregar todos
    [*.md]*agregar un y tipo de
    archivo al repositorio}

    $ git reset =
    {reiciar el git
    [nombre.md] quitar un archivo del repositorio
    [--soft id] se ubica en el historico
    de el commit sin borrar nada
    [--hard id] se mueve al punto dl commit del id}

    $ git --mixed id =
    {se ubica en el historico del commit pero
    borrando todos los commit de hay en adelante}

    $ git revest =
    {retrocede los cambios de un commit
    [--no-commit] retocede los cambios pero sin
    dejar un commit de registro}

    $ git status =
    {muestra el estado actual de los archivos}

    $ git diff =
    {muestra los cambios entre commit
    [HEAD~num HEAD]numero del commit para
    comparar contando del ultimo (q para salir)}

    $ git show =
    {muestra los cambios de un archibo}

    $ git checkout =
    {retorna un cambo al punto de commit
    [rama] te ubica en la rama de tu proyecto
    [-b nuevaRama] crea y te ubica en la nueva rama}

    $ git merge nuevaRama =
    {para unir una rama con el proyecto principal
    (cuando no existe conflicto)}

    $ git log =
    {registro de commit
    [--stat]muestra los cambios expecificos
    [--graph]muestra los cambios con graficos}

    $ git reflog =
    {registro interno de todos los
    commit incluyendo los borrados}

    $ git log --oneline --decorate --all --graph =
    {una forma mas resumida de mas visual del
    historial de commit y donde nos encontramos}

    $ git commit =
    {[-m "name"] guardado de cambios
    [--amend -m "name"] retictificación del commti
    [-a] agrega las modificaciones al commit}

    $ git mv =
    {[README.md NuevoNombre.md]
    para cambiar el nombre
    [READMEmd ruta] para mover el archivo}

    $ git rm README.md =
    {para borrar un archivo
    [--cached] lo borra del cache2}

    $ git branch nuevaRama =
    {crea una difurcación del proyecto
    [-d nuevaRama] para eliminar una rama}

    $ git tag Version_1.0.0 =
    {[version_1.0.0] crea una etiqueta}
    [-a verision_1.0.0 id -m "version inicial"]
    crea una etiqueta y se le agrega un mensaje sin
    no pones el id se ubica en la ultima locacion
    [-d nameTag] elimina la etiqueta}

    $ git remote =
    {[add origin https://github.com/JIN26/Plazi.git]
    agrega la ruta de destino
    [set-url] cambiar la url}

    $ git push =
    {[-u origin master] se sube en la rama master}

    $ git pull =
    {unir ramificaiones en diferentes
    puntos del proyecto
    [origin master --allow-unrelated-histories]
    fuciona conflictos de diferencia de commit}

    $ git fetch =
    {actualiza el repositorio local
    con el del servidor}

    * git switch =
    {[-] cambia la ultima accion ejecutada}
