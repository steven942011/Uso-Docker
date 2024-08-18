FROM node:20.5.0-alpine3.18
WORKDIR /aPP/
COPY package*.json .
RUN npm install
COPY . .
ENV API=https://aív1-miweb.com
EXPOSE 5173
CMD ["npm", "run", "dev"]
