# Use the official Node.js image with Yarn
FROM node:18

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and yarn.lock
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install

# Copy the rest of the application files
COPY . .

# Build the application
RUN yarn build

# Install serve to serve the build directory
RUN yarn global add serve

# Expose the port the app will run on
EXPOSE 80

# Command to run the application
CMD ["serve", "-s", "build", "-l", "80"]
