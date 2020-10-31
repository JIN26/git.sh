#Commands git

git help =
  {commands help}

git --version =
  { ver la version del git}

git config --global alias.l "log" =
  {crea un alias para usar los
	commands mas rapido }

git config =
  {muestra las configuracions
	[-l] user confiration characteristics
	[--global] use global config file
	[user.name "JIN26"] git username
	[user.email "Angelmantilla26@gmail.com]
  git email}

git init =
  {iniciar un repositorio}

git clone =
  {clonar un repositorio}

git add README.md =
  {agregar un archivo al especifico
  al repositorio
  [.][-A][--all] agregar todos
  [*.md]agregar un y tipo de
  archivo al repositorio}

git reset =
  {reiciar el git
	[nombre.md] quitar un archivo del repositorio
	[--soft id] se ubica en el historico
  de el commit sin borrar nada
	[--hard id] se mueve al punto dl commit del id}

git --mixed id =
  {se ubica en el historico del commit pero
  borrando todos los commit de hay en adelante}

git revest =
  {retrocede los cambios de un commit
  [--no-commit] retocede los cambios pero sin
  dejar un commit de registro}

git status =
  {muestra el estado actual de los archivos}

git diff =
  {muestra los cambios (q para salir)}

git checkout =
  {retorna un cambo al punto de commit
  [rama] te ubica en la rama de tu proyecto
  [-b nueva_rama] crea y te ubica en la nueva rama}

git merge nueva_rama =
  {para unir una rama con el proyecto principal
  (cuando no existe conflicto)}

git log =
  {registro de commit}

git reflog =
  {registro interno de todos los
  commit incluyendo los borrados}

git log --oneline --decorate --all --graph =
  {una forma mas resumida de mas visual del
  historial de commit y donde nos encontramos}

git commit =
  {[-m "name"] guardado de cambios
  [--amend -m "name"] retictificación del commti}

git mv =
  {[README.md Nuevo_nombre.md] para cambiar el nombre
  [READMEmd ruta] para mover el archivo}

git rm README.md =
  {para borrar un archivo
  [--cached] lo borra del cache2}

git branch nueva_rama =
  {crea una difurcación del proyecto
  [-d nueva_rama] para eliminar una rama}

git tag Version 1.0.0 =
  {[version 1.0.0] crea una etiqueta}
  [-a version 1.0.0 id -m "version inicial"]
  crea una etiqueta y se le agrega un mensaje sin
  no pones el id se ubica en la ultima locacion
  [-d name_tag] elimina la etiqueta}

git remote =
  {[add origin https://github.com/JIN26/25_practica.git]
  agrega la ruta de destino}

git push =
  {[-u origin master] se sube en la rama master}

git pull =
  {unir ramificaiones en diferentes puntos del proyecto}

git fetch =
  {actualiza el repositorio local con el del servidor}
