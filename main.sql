CREATE DATABASE blog;

CREATE TABLE users (
    id SERIAL PRIMARY KEY, 
    first_name VARCHAR(50),  
    last_name VARCHAR(50), 
    email VARCHAR(50), 
    password VARCHAR(50),
    phone_number VARCHAR(50),
    address VARCHAR(50)
);

CREATE TABLE posts (
    id SERIAL PRIMARY KEY, 
    title VARCHAR(50), 
    content TEXT, 
    slug VARCHAR(50), 
    user_id VARCHAR(50)
);

CREATE TABLE comments (
    id SERIAL PRIMARY KEY, 
    content TEXT, 
    user_id VARCHAR(50),
    post_id VARCHAR(50),
    created_at TIMESTAMP
);

INSERT INTO 
users (first_name, last_name, email, password, phone_number, address) 
VALUES 
('Shodiyor', 'Ergashev', 'shodiyor_ergashev@gmail.com', 'qwer1234', '+998900616147', 'Tashkent Chilonzor'),
('Kimdur', 'Kimsanov', 'kimsan@mail.com', '123aaa', '+998901234567', 'Toshkent Qayeridir');

INSERT INTO 
posts (title, content, slug, user_id) 
VALUES 
(   'Hello from SQL', 
    'This is content for hello from SQL, it should be longer than title', 
    'what is slug?',
    1
);

INSERT INTO
comments (content, post_id, user_id, created_at)
VALUES(
    'I have commented here',
    1,
    2,
    NOW()
);
