CREATE TABLE Suggestion (
    id SERIAL PRIMARY KEY,
    student_id INTEGER,
    hostel_id INTEGER,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    status VARCHAR(50) DEFAULT 'pending',
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_suggestion_student FOREIGN KEY (student_id) REFERENCES student(id),
    CONSTRAINT fk_suggestion_hostel FOREIGN KEY (hostel_id) REFERENCES hostel(id)
);
