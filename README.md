# dotfiles

## dotfiles

El archivo `.gitignore`, contiene esto: `*`, git ignorará todos los archivos del directorio `$HOME`. Para rastrear cualquier archivo, es necesario anular el archivo .gitignore caso por caso con `git add -f`.

El archivo `.gitignore` no aplica a ningún archivo que ya se esté rastreado por git, por lo que cualquier cambio futuro aparece en el estado de git, y puede ser confirmado y/o publicado.

## Configuracion

Después de una instalación reciente, ejecuto los siguientes comandos:

```git
cd
git init
git remote add origin git@github.com:jaideraao/dotfiles.git
git fetch
git checkout -f main
```

## Creditos

Gracias a Drew DeVault's blog, fuente de información en la que aprendi a administrar mis dotfiles como un repositorio git. la fuente la pueden encontrar en el siguiente link: <https://drewdevault.com/2019/12/30/dotfiles.html>
