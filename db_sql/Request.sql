CREATE TABLE Request (
    id SERIAL PRIMARY KEY, -- Auto-generated primary key
    cms_id INTEGER NOT NULL UNIQUE,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
