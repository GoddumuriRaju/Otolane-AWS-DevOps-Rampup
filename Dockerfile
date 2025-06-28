# Use official Node.js LTS image
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if present)
COPY package*.json ./

# Install only production dependencies
RUN npm install --production

# Copy your application code
COPY app.js .

# Expose the port your app runs on
EXPOSE 3000

# Start the server
CMD ["node", "app.js"]
