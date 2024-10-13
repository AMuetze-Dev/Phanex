FROM node:20
WORKDIR /app
COPY ./package*.json ./
RUN npm install
COPY . .
RUN ["npx","serve","-s","build"]