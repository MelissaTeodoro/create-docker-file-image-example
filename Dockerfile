# Versão do node via docker hub
FROM node:14 
# Definindo diretório padrão sendo /app-node
WORKDIR /app-node
# Variável de porta para usar dentro da imagem. É usado em tempo de build da imagem
ARG PORT_BUILD=3000
# Usado dentro do container
ENV PORT=$PORT_BUILD
# Exposta na porta
EXPOSE $PORT_BUILD
# Copia o que está no diretório atual para o diretório definido no WORKDIR
COPY . .
# Comando abaixo será executado enquanto a imagem estiver sendo criada
RUN npm install
# Quando o container for executado a partir dessa imagem, o comando abaixo será executado
ENTRYPOINT npm start

# Criar imagem:
# docker build -t mel/app-node:1.0 .  <- Com referência ao diretório atual
# Documentação: Docker reference: https://docs.docker.com/engine/reference/builder/
 