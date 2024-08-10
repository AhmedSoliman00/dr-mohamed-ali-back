# Use an official Node.js runtime as a parent image
FROM node:19-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the API port
EXPOSE 4005

# Command to run the API
CMD ["npm", "start"]
