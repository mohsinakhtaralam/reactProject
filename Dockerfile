FROM node:18-alpine
# Set the working directory
WORKDIR /app
# Copy package.json and package-lock.json
COPY package*.json ./
# Install dependencies
# RUN apk update && apk upgrade && npm install
RUN npm install
# Copy the rest of the application code
COPY . .
# Expose the application port
EXPOSE 3000
# Start the nest js application
CMD ["npm", "start"]

