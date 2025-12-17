FROM node:20-alpine

WORKDIR /app

# Install dependencies first (better caching)
COPY package*.json ./
RUN npm ci

# Copy app source
COPY . .

EXPOSE 3000

CMD ["node", "src/index.js"]
