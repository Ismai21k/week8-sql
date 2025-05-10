-- Categories Table
CREATE TABLE Categories (
    category_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Authors Table
CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Publishers Table
CREATE TABLE Publishers (
    publisher_id INT PRIMARY KEY,
    name VARCHAR(100),
    address VARCHAR(255)
);

-- Books Table
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    category_id INT,
    author_id INT,
    publisher_id INT,
    publication_year INT,
    total_copies INT DEFAULT 1,
    available_copies INT DEFAULT 1,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id),
    FOREIGN KEY (author_id) REFERENCES Authors(author_id),
    FOREIGN KEY (publisher_id) REFERENCES Publishers(publisher_id)
);

-- Members Table
CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    membership_date DATE
);

-- Loans Table (Borrow/Return records)
CREATE TABLE Loans (
    loan_id INT PRIMARY KEY,
    book_id INT,
    member_id INT,
    loan_date DATE,
    due_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);
