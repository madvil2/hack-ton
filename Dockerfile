# Use the official Node.js image with Yarn
FROM node:16

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and yarn.lock
COPY package.json yarn.lock ./

# Install dependencies using Yarn
RUN yarn install

# Copy the rest of the application code
COPY . .

# Build the app for production
RUN yarn build

# Install serve to serve the build directory
RUN yarn global add serve

# Use serve to serve the build directory on port 80
CMD ["serve", "-s", "build", "-l", "80"]

# Expose port 80
EXPOSE 80
