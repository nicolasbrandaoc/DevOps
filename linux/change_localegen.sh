### LOCALEGEN:

Algumas distro não vêm com o Locale pt_BR instalado/configurado.

Mostra as configurações atuais:  

`sudo locale`

Mostra os Locales disponíveis. 

`sudo locale -a`

Se o **Locale pt_BR.UTF-8** não aparecer na lista, você terá que instalar.

`sudo locale-gen pt_BR.UTF-8`

reconfigura pacotes após eles já estarem instalados.

`dpkg-reconfigure` 

`sudo dpkg-reconfigure locales`

Deixe somente marcado o pt_BR.UTF-8

Atualiza o idioma padrão .

`sudo update-locale LANG=pt_BR.UTF-8`

Se o comando acima der erro, pode prosseguir para o próximo comando.

Consulta o valor definido em LANG.

`cat /etc/default/locale`

`LANG=pt_BR.utf8`