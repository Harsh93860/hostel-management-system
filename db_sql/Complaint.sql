CREATE TABLE Complaint (
    id SERIAL PRIMARY KEY, -- or AUTO_INCREMENT for MySQL
    student_id INTEGER, -- Foreign key to student table
    hostel_id INTEGER,  -- Foreign key to hostel table
    type VARCHAR(100) NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    status VARCHAR(50) DEFAULT 'pending',
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_complaint_student FOREIGN KEY (student_id) REFERENCES student(id),
    CONSTRAINT fk_complaint_hostel FOREIGN KEY (hostel_id) REFERENCES hostel(id)
);
