# Start med en Node.js base image fra Docker Hub
FROM node:14

# Angiv arbejdsdirectory i containeren
WORKDIR /app

# Kopier package.json og package-lock.json til containeren
COPY package*.json ./

# Installer npm afhængigheder
RUN npm install

# Kopier resten af koden til containeren
COPY . .

# Eksponer porten som containeren kører på
EXPOSE 3000

# Start applikationen
CMD ["node", "index.js"]
