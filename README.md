# Descripción

Administrar mis **dotfiles** como un repositorio git.

# Usando dotfiles

- El archivo `.gitignore`, contiene esto: `*`, git ignorará todos los archivos del directorio `$HOME`.

- Para rastrear cualquier archivo, es necesario anular el archivo `.gitignore` caso por caso con `git add -f [file]`.

- El archivo `.gitignore` no aplica a ningún archivo que ya se esté rastreando con git, por lo que cualquier cambio futuro aparece en el estado de git, y puede ser confirmado y/o publicado.

> [!IMPORTANT]
> Importante seguir este flujo de trabajo, de esta manera conseguirás un repositorio **consistente** y **seguro**, pues no vas a desear incluir archivos importantes, como por ejemplo, los archivos que se encuentran en el directorio **`.ssh`**

## Configuración

Después de una instalación reciente, ejecuto los siguientes comandos:

```shell
cd
git init
git remote add origin git@github.com:jaideraao/dotfiles.git
git fetch
git checkout -f main
```

## Créditos

Gracias a [Drew DeVault's blog](<https://drewdevault.com/2019/12/30/dotfiles.html>), la fuente con la que aprendí a administrar mis **dotfiles** como un repositorio git.