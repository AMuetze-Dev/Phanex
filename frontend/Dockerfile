FROM node:20
WORKDIR /app
COPY frontend/package*.json ./
RUN npm install
COPY . .
RUN ["npx","serve","-s","build"]