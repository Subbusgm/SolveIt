const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const db = require('../config/db');

// Register user (student, counselor, admin)
const registerUser = (req, res) => {
  const { username, password, role } = req.body;
  bcrypt.hash(password, 10, (err, hashedPassword) => {
    if (err) return res.status(500).json({ error: 'Error hashing password' });

    const query = 'INSERT INTO users (username, password, role) VALUES (?, ?, ?)';
    db.query(query, [username, hashedPassword, role], (err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      res.status(201).json({ message: 'User registered successfully' });
    });
  });
};

// Login user
const loginUser = (req, res) => {
  const { username, password } = req.body;
  const query = 'SELECT * FROM users WHERE username = ?';
  db.query(query, [username], (err, result) => {
    if (err || result.length === 0) return res.status(401).json({ error: 'User not found' });

    bcrypt.compare(password, result[0].password, (err, isMatch) => {
      if (err || !isMatch) return res.status(401).json({ error: 'Invalid credentials' });

      const token = jwt.sign(
        { userId: result[0].user_id, role: result[0].role },
        process.env.JWT_SECRET,
        { expiresIn: '1h' }
      );
      res.status(200).json({ message: 'Login successful', token });
    });
  });
};

module.exports = { registerUser, loginUser };
