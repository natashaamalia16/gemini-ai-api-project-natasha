# 1. Base image (Node.js LTS)
FROM node:20-alpine

# 2. Set working directory
WORKDIR /app

# 3. Copy package files dulu (biar cache efektif)
COPY package*.json ./

# 4. Install dependencies
RUN npm install

# 5. Copy seluruh source code
COPY . .

# 6. Expose port
EXPOSE 3000

# 7. Jalankan aplikasi
CMD ["node", "index.js"]
