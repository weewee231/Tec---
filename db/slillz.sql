CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    interests TEXT,
    skills TEXT,
    goals TEXT
);

CREATE TABLE test_results (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    category VARCHAR(255),
    score INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE professions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    required_skills TEXT,
    interests TEXT,
    job_market_data TEXT
);