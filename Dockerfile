# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and yarn.lock
COPY package.json yarn.lock ./

# Install dependencies using Yarn
RUN yarn install

# Copy the rest of the application code
COPY . .

# Build the app for production
RUN yarn build

# Install serve to serve the application
RUN yarn global add serve

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run the app
CMD ["serve", "-s", "docs"]
