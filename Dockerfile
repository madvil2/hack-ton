# Use the official Node.js image with Yarn
FROM node:16

# Create and change to the app directory
WORKDIR /usr/src/app

# Copy app files
COPY . .

# Install dependencies using Yarn
RUN yarn install

# Build the app for production
RUN yarn build

# Install serve to serve the build directory
RUN yarn global add serve

# Use serve to serve the build directory
CMD ["serve", "-s", "build", "-l", "5000"]

# Expose the port the app runs on
EXPOSE 5000
