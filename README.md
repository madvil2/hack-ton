# Cryptocash Clicker - Hackathon Project

## Overview

Cryptocash is like real cash money but with all the good things from cryptocurrencies. It looks like cash, feels like cash, it even smells like cash but it has a digital soul. It is also the safest way to keep your crypto. There is no serious self-custodial wallet or cold-storage wallet that won't ask you to write down your seed phrase on paper. A seed phrase is basically the private key converted to mnemonics so that you can write it down on paper. Cryptocash is a self-contained wallet in a piece of high-security paper. Both the private key and the public key are printed in the context of this high-security paper with a special handheld printing device called Cryptocash ATM. Cryptocash has the best of all worlds and it will rule the world someday (hopefully)!

Our clicker app is designed to onboard people to our project, make them have fun, and earn our tokens.

## Prize

We are thrilled to announce that our project won the **Berlin Bootcamp $NOT Exclusive 🤭** prize at the Open League Summer Berlin Bootcamp by TON Society Europe!

A $NOT grant in the amount of $2,000 was awarded to our project by Valeriy Bukharkov, Open Builders CBDO (Tonstarter, Notcoin).

## Team

I was in a team with other amazing developers and contributors. Here is the link to our team BUIDLs:
[Team BUIDLs](https://dorahacks.io/buidl/13013)

## Project

### Introduction

Our Telegram app was created by me alone. Our clicker app is a fun and engaging way for users to interact with our project and earn tokens.

### Features

- **Country Selection**: Users can select their country to participate and earn coins.
- **Clicker Game**: Users click a button to earn coins for their selected country.
- **Leaderboard**: A dynamic leaderboard that shows the top users and countries based on the coins earned.

### Technology Stack

- **React**: For building the user interface.
- **TypeScript**: For type safety and better developer experience.
- **Ant Design**: For UI components.
- **Vite**: For fast development and build setup.

### Installation

To run this project locally, follow these steps:

1. **Clone the repository**:
   ```sh
   git clone https://github.com/yourusername/cryptocash-clicker.git
   cd cryptocash-clicker
   ```

2. **Install dependencies**:
   ```sh
   yarn install
   ```

3. **Run the development server**:
   ```sh
   yarn dev
   ```

4. **Build the project**:
   ```sh
   yarn build
   ```

5. **Serve the build locally**:
   ```sh
   yarn global add serve
   serve -s dist
   ```

### Deployment

To deploy this project using Dokku, follow these steps:

1. **Create a `Dockerfile`** in the root of your project:
   ```Dockerfile
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

   # Build the React application with Vite
   RUN yarn build

   # Install serve to serve the build directory
   RUN yarn global add serve

   # Expose the port the app runs on
   EXPOSE 80

   # Command to serve the build directory
   CMD ["serve", "-s", "dist", "-l", "80"]
   ```

2. **Push to Dokku remote**:
   ```sh
   git add .
   git commit -m "Deploy to Dokku"
   git remote add dokku dokku@your-server-ip:your-app-name
   git push dokku master
   ```

### License

This project is licensed under the MIT License.

### Acknowledgements

We would like to thank Valeriy Bukharkov and the Open League Summer Berlin Bootcamp by TON Society Europe for awarding us the $NOT grant.

---

Feel free to contribute to this project by opening issues and submitting pull requests. Let's make Cryptocash the future of digital and physical currency!
