# dotfiles
dotfiles

Fuente
https://drewdevault.com/2019/12/30/dotfiles.html

La clave para que esto funcione bien es mi archivo .gitignore, el cual únicamente contiene lo siguiente:

*

Con esta línea, git ignorará todos los archivos de mi directorio $HOME, así que no tengo que preocuparme por dejar archivos personales, música, vídeos, otros repositorios de git, etc., en mi repositorio público de dotfiles.

Pero, para rastrear cualquier cosa, necesitamos anular el archivo .gitignore caso por caso con git add -f, o --force.

Por ejemplo, para añadir mi vimrc, utilicé el siguiente comando:
```git
git add -f .vimrc
```

Entonces puedo comprometerme y empujar normalmente, y .vimrc es rastreado por git. El archivo gitignore no se aplica a ningún archivo que ya esté siendo rastreado por git, por lo que cualquier cambio futuro en mi vimrc aparece en el estado git, git diff, etc., y puede ser comprometido con git commit -a, o agregado al área de preparación normalmente con git add - usar -f ya no es necesario.

Configurar una nueva máquina es bastante fácil. Después de la instalación, ejecuto los siguientes comandos:

```git
cd
git init
git remote add origin git@github.com:jaideraao/dotfiles.git
git fetch
git checkout -f master
```
