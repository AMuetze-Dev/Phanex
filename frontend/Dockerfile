FROM node:20
WORKDIR /app
COPY ./package*.json ./
RUN npm install
COPY . .
RUN npm install -g serve
RUN npm run build
RUN ["serve","-s","build"]