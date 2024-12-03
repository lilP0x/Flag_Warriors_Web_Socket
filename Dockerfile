FROM node:16

WORKDIR /usr/src/app

# COPY package*.json ./

COPY . .

RUN npm install



EXPOSE 8081

#CMD ["npm", "start"]

# Comando para iniciar el servidor WebSocket
CMD ["node", "./src/main/websocket/server.js"]
