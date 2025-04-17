CREATE TABLE Admin (
    id SERIAL PRIMARY KEY, -- or AUTO_INCREMENT for MySQL
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    father_name VARCHAR(255) NOT NULL,
    contact VARCHAR(20) NOT NULL,
    address TEXT NOT NULL,
    dob DATE NOT NULL,
    cnic VARCHAR(20) NOT NULL UNIQUE,
    user_id INTEGER, -- Foreign key to user table
    hostel_id INTEGER, -- Foreign key to hostel table
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES user(id),
    CONSTRAINT fk_hostel FOREIGN KEY (hostel_id) REFERENCES hostel(id)
);
