CREATE TABLE Invoice (
    id SERIAL PRIMARY KEY, -- or AUTO_INCREMENT for MySQL
    student_id INTEGER, -- Foreign key to student table
    title VARCHAR(255) DEFAULT 'Mess Fee',
    amount DECIMAL(10, 2) NOT NULL,
    status VARCHAR(50) DEFAULT 'pending',
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_invoice_student FOREIGN KEY (student_id) REFERENCES student(id)
);
