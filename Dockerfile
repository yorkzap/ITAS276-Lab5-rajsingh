FROM node:10-alpine

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./
RUN yarn install --production

# Bundle app source
COPY . .

# Expose port
EXPOSE 3000

CMD ["node", "src/index.js"]