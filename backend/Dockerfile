FROM node:18-alpine AS builder
WORKDIR /app
COPY package*.json ./
##RUN npm install --production
RUN npm install

FROM node:18-alpine
WORKDIR /app

USER node
COPY --chown=node:node . .
COPY --chown=node:node --from=builder /app/node_modules ./node_modules


EXPOSE 3000

CMD ["node", "server.js"]
