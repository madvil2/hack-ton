# Use an official node image
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy the package.json and yarn.lock files to the working directory
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install

# Copy the rest of the application code to the working directory
COPY . .

# Build the React application
RUN yarn build

# Copy the static.json to the build directory
COPY static.json build/static.json

# Install serve to serve the build directory
RUN yarn global add serve

# Command to serve the build directory
CMD ["serve", "-s", "build", "-c", "static.json"]

# Expose the port the app runs on
EXPOSE 80
