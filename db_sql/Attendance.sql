CREATE TABLE Attendance (
    id SERIAL PRIMARY KEY, -- or AUTO_INCREMENT for MySQL
    student_id INTEGER, -- Foreign key to student table
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) NOT NULL,

    CONSTRAINT fk_student FOREIGN KEY (student_id) REFERENCES student(id)
);
