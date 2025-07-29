# Usar imagem oficial Node.js
FROM node:24-alpine

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

COPY . .

# Expõe porta 3000
EXPOSE 3000

CMD ["npm", "run", "dev"]