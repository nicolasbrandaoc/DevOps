
#!/bin/bash

# Caminho para os arquivos JS do Grafana
CAMINHO="/usr/share/grafana/public/build/"

# Atualizar Título
find "$CAMINHO" -name '*.js' -exec sed -i 's|AppTitle="Grafana"|AppTitle="BrasilCloud"|g' {} \;

# Atualizar Título de Login
find "$CAMINHO" -name '*.js' -exec sed -i 's|LoginTitle="Welcome to Grafana"|LoginTitle="BrasilCloud - Monitoramento"|g' {} \;

# Remover Documentação, Suporte, Comunidade no Rodapé
find "$CAMINHO" -name '*.js' -exec sed -i 's|\[{target:"_blank",id:"documentation".*grafana_footer"}\]|\[\]|g' {} \;

# Remover Edição no Rodapé
find "$CAMINHO" -name '*.js' -exec sed -i 's|({target:"_blank",id:"license",.*licenseUrl})|()|g' {} \;

# Remover Versão no Rodapé
find "$CAMINHO" -name '*.js' -exec sed -i 's|({target:"_blank",id:"version",.*CHANGELOG.md":void 0})|()|g' {} \;

# Remover ícone de Notícias
find "$CAMINHO" -name '*.js' -exec sed -i 's|(.,.....)(....,{className:.,onClick:.,iconOnly:!0,icon:"rss","aria-label":"News"})|null|g' {} \;

# Remover ícone de Open Source
find "$CAMINHO" -name '*.js' -exec sed -i 's|.push({target:"_blank",id:"version",text:`${..edition}${.}`,url:..licenseUrl,icon:"external-link-alt"})||g' {} \;

# Reiniciar o Grafana para aplicar as mudanças
sudo systemctl restart grafana-server

echo "Alterações aplicadas e Grafana reiniciado."


https://suporte-files.brasilcloud.net/index.php/s/Oj8YhpPUZCiv0c5/download




100 - ((node_filesystem_avail_bytes{instance="$node",job="$job",device!~'rootfs'} * 100) / node_filesystem_size_bytes{instance="$node",job="$job",device!~'rootfs'})



