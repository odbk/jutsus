# README

## ONE LINERS
El archivo [reverse_shell.md](https://github.com/odbk/jutsus/blob/master/reverse_shell/reverse_shell.md) contiene one-liners para copiado rápido 




## GENERATOR
Con el puedes usar cualquiera de las reverse_shell provistas en reverse_shell.md para generar un archivo con los datos de conexión
hacia tu equipo.

#### USO:

./generator.sh -i IP -p PUERTO -s SHELL_A_USAR -o ARCHIVO_DE_SALIDA

./generator.sh -i *10.10.10.1* -p *1234* -s *pylinux.py* -o *out.py*

*El nombre de shell puede tomarse de la carpeta scripts o bien de [reverse_shell.md](https://github.com/odbk/jutsus/blob/master/reverse_shell/reverse_shell.md) justo antes del código*
