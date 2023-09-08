CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone_number VARCHAR(15),
    address VARCHAR(255)
);

INSERT INTO customers (first_name, last_name, email, phone_number, address)
VALUES
    ('John', 'Doe', 'john.doe@example.com', '123-456-7890', '123 Main St'),
    ('Jane', 'Smith', 'jane.smith@example.com', '987-654-3210', '456 Elm St'),
    ('Alice', 'Johnson', 'alice.johnson@example.com', '555-123-4567', '789 Oak St');