# Versão do node via docker hub
FROM node:14 
# Definindo diretório padrão sendo /app-node
WORKDIR /app-node
# Copia o que está no diretório atual para o diretório definido no WORKDIR
COPY . .
# Comando abaixo será executado enquanto a imagem estiver sendo criada
RUN npm install
# Quando o container for executado a partir dessa imagem, o comando abaixo será executado
ENTRYPOINT npm start

# Criar imagem:
# docker build -t mel/app-node:1.0 .  <- Com referência ao diretório atual
# Documentação: Docker reference: https://docs.docker.com/engine/reference/builder/
 