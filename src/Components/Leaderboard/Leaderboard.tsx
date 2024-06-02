import { useState, useEffect } from 'react';
import { getAllUsers } from '../../Database/db';
import styles from './styles.module.scss';

const Leaderboard = () => {
  const [leaderboard, setLeaderboard] = useState<{ userid: string; country: string; coins: number }[]>([]);

  useEffect(() => {
    const fetchLeaderboard = async () => {
      const users = await getAllUsers();
      users.sort((a, b) => b.coins - a.coins); // Sort users by coins in descending order
      setLeaderboard(users);
    };

    fetchLeaderboard();
  }, []);

  return (
    <div className={styles.leaderboard}>
      <h2>Leaderboard</h2>
      <ul>
        {leaderboard.map((user, index) => (
          <li key={user.userid}>
            {index + 1}. {user.userid} ({user.country}): {user.coins} coins
          </li>
        ))}
      </ul>
    </div>
  );
};

export default Leaderboard;
