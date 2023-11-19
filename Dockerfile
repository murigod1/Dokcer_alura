# From pega qual é a img que ira se basear
FROM node:14
# WORKDIR vai ser o dirtorio padrao que a img sera criada
WORKDIR /firt-imageDocker
# ARG é usado para defenir a variavel de ambiente na nossa aplicação, no caso atual é a PORT
ARG PORT_BUILD=6000
# Env é a variavel de ambiente que será colocada dentro do conteiner
ENV PORT=$PORT_BUILD

# ARG traz a varial para a criação da build mas não é possivel usa-la após a criação
# ENV é quem levará a varialvel para ser usada dentro da imagem caso necessario

# Expose pré define qual é a porta que aplicação estará sendo executada
EXPOSE $PORT_BUILD
# Serve para pegar os arquivos que devesão ser usados na imagem
COPY . .
# comandos que serão execurados quando estiver criando a imagem
RUN npm install
# comando que será executado quando estiver finalizado as instalações
ENTRYPOINT npm start