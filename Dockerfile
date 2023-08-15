FROM node:18

#Create app directory
WORKDIR /usr/src/app

# Install all dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available 
COPY package*.json ./

RUN npm install
# If ou are building code for production
# RUN npm ci --omit=dev

# Bundle app source
COPY . .

EXPOSE 8080

CMD ["node", "server.js"]