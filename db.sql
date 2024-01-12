
CREATE TABLE Question (
    question_id INT PRIMARY KEY AUTO_INCREMENT,
    text TEXT,
    image_url VARCHAR(255),
    code TEXT,
    options TEXT,
    correct_option VARCHAR(10),
    subject VARCHAR(50),
    karma INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_by INT,
    FOREIGN KEY (created_by) REFERENCES User(user_id)
);

CREATE TABLE Subject (
    subject_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    exam VARCHAR(50),
    added_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    added_by INT,
    subject_description TEXT,
    FOREIGN KEY (added_by) REFERENCES User(user_id)
);

CREATE TABLE Exam (
    exam_id INT PRIMARY KEY AUTO_INCREMENT,
    exam_name VARCHAR(50),
    exam_description TEXT,
    added_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    added_by INT,
    exam_form_website VARCHAR(255),
    FOREIGN KEY (added_by) REFERENCES User(user_id)
);

CREATE TABLE User (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    role VARCHAR(20),
    email VARCHAR(255) UNIQUE,
    contact VARCHAR(15),
    password VARCHAR(255),
    branch VARCHAR(50),
    college VARCHAR(50),
    university VARCHAR(50),
    passout_year INT,
    current_year INT,
    city VARCHAR(50)
);

CREATE TABLE QuizDetails (
    quiz_id INT PRIMARY KEY AUTO_INCREMENT,
    created_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    subject VARCHAR(50),
    exam VARCHAR(50),
    description TEXT,
    time INT,
    karma INT,
    attempted_by INT,
    FOREIGN KEY (created_by) REFERENCES User(user_id)
);

CREATE TABLE Review (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    quiz_id INT,
    user_id INT,
    karma INT,
    FOREIGN KEY (quiz_id) REFERENCES QuizDetails(quiz_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

CREATE TABLE Quizzes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    quiz_id INT,
    question_id INT,
    FOREIGN KEY (quiz_id) REFERENCES QuizDetails(quiz_id),
    FOREIGN KEY (question_id) REFERENCES Question(question_id)
);
