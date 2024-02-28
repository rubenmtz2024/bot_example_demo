# Usar la imagen oficial de Node.js como imagen base
FROM node:18.17.0

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copiar los archivos de dependencias del proyecto al directorio de trabajo
COPY package*.json ./

# Instalar las dependencias del proyecto
RUN npm install

# Copiar todos los archivos del proyecto al directorio de trabajo
COPY . .

# Exponer el puerto que tu aplicación utilizará
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["npm", "start"]
