CREATE TABLE Student (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    cms_id INTEGER NOT NULL UNIQUE,
    room_no INTEGER NOT NULL,
    batch INTEGER NOT NULL,
    dept VARCHAR(100) NOT NULL,
    course VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    father_name VARCHAR(255) NOT NULL,
    contact VARCHAR(20) NOT NULL,
    address TEXT NOT NULL,
    dob DATE NOT NULL,
    cnic VARCHAR(30) NOT NULL UNIQUE,
    user_id INTEGER,
    hostel_id INTEGER,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_student_user FOREIGN KEY (user_id) REFERENCES user(id),
    CONSTRAINT fk_student_hostel FOREIGN KEY (hostel_id) REFERENCES hostel(id)
);
