import { addUser } from './db';
import { countries } from '../countries';

const generateRandomScore = () => Math.floor(Math.random() * 1000);

const populateDB = async () => {
  for (let i = 0; i < 100; i++) { // Creating 100 fake users
    const userId = `fake-user-${i}`;
    const country = countries[Math.floor(Math.random() * countries.length)];
    const coins = generateRandomScore();
    await addUser({ userid: userId, country, coins });
  }
  console.log('Database populated with fake users');
};

export default populateDB;
