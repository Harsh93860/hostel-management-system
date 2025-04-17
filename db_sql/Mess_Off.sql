CREATE TABLE Mess_Off (
    id SERIAL PRIMARY KEY, -- or AUTO_INCREMENT for MySQL
    student_id INTEGER, -- Foreign key to student table
    leaving_date DATE NOT NULL,
    return_date DATE NOT NULL,
    status VARCHAR(50) DEFAULT 'pending',
    request_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_messoff_student FOREIGN KEY (student_id) REFERENCES student(id)
);
