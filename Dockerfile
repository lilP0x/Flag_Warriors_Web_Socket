# Usa la imagen base de Node.js
FROM node:16

# Crea un directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copia los archivos de tu proyecto (primero los package.json y package-lock.json para instalar las dependencias)
COPY package*.json ./

# Instala las dependencias del proyecto
RUN npm install

# Copia el resto de los archivos de tu servidor WebSocket
COPY . .

# Expone el puerto que utiliza el WebSocket (ajústalo al puerto que uses)
EXPOSE 8081

# Comando para iniciar el servidor WebSocket
CMD ["node", "src/main/websocket/server.js"]
