#!/bin/sh

# Define o diretório do NVM
NVM_DIR="$HOME/.nvm"

# Verifica se o script nvm.sh existe e o carrega
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Verifica se o arquivo package.json existe
if [ -f package.json ]; then
    # Lê a versão do Node.js especificada no package.json
    NODE_VERSION=$(jq -r '.engines.node' package.json)

    # Define a versão do Node.js identificada usando o NVM
    nvm use "$NODE_VERSION" || nvm install "$NODE_VERSION"
else
    echo "O arquivo package.json não foi encontrado."
    exit 1
fi

# Verifica se um parâmetro foi informado
if [ -n "$1" ]; then
    # Executa o comando informado
    $1
else
	# Executa o shell atual novamente
	exec $SHELL 
fi
