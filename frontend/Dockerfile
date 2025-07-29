# Stage 1: Build
FROM node:24-alpine AS builder
WORKDIR /app

# Só copia o package.json para instalar deps
COPY package*.json ./
RUN npm install

# Copia o resto e faz build
COPY . .
RUN npm run build

# Stage 2: Runtime (só o necessário)
FROM node:24-alpine
WORKDIR /app

# Copia só o package.json e instala prod deps
COPY package*.json ./
RUN npm install --omit=dev

# Copia o build final do builder
COPY --from=builder /app/.next .next
COPY --from=builder /app/public public
COPY --from=builder /app/next.config.js ./

EXPOSE 3000
CMD ["npm", "run", "start"]