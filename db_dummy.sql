-- Insert data into User table
INSERT INTO User (name, role, email, contact, password, branch, college, university, passout_year, current_year, city)
VALUES
    ('John Doe', 'Student', 'john.doe@example.com', '1234567890', 'password123', 'Computer Science', 'ABC College', 'XYZ University', 2022, 3, 'City1'),
    ('Jane Smith', 'Teacher', 'jane.smith@example.com', '9876543210', 'pass123', 'Electrical Engineering', 'DEF College', 'PQR University', 2018, NULL, 'City2'),
    ('Admin User', 'Admin', 'admin@example.com', '5555555555', 'adminpass', NULL, NULL, NULL, NULL, NULL, 'City3');

-- Insert data into Subject table
INSERT INTO Subject (name, exam, added_by, subject_description)
VALUES
    ('Mathematics', 'Final Exam', 2, 'Advanced topics in Mathematics'),
    ('Computer Science', 'Midterm Exam', 2, 'Fundamentals of Computer Science'),
    ('Physics', 'Final Exam', 2, 'Modern Physics');

-- Insert data into Exam table
INSERT INTO Exam (exam_name, exam_description, added_by, exam_form_website)
VALUES
    ('Final Exam', 'The big test at the end of the semester', 2, 'examwebsite1.com'),
    ('Midterm Exam', 'The test in the middle of the semester', 2, 'examwebsite2.com'),
    ('Pop Quiz', 'A surprise quiz for everyone', 3, 'examwebsite3.com');

-- Insert data into Question table
INSERT INTO Question (text, image_url, code, options, correct_option, subject, karma, created_by)
VALUES
    ('What is 2 + 2?', NULL, NULL, '{"A": "3", "B": "4", "C": "5", "D": "6"}', 'B', 'Mathematics', 10, 2),
    ('What is the capital of France?', NULL, NULL, '{"A": "Paris", "B": "London", "C": "Berlin", "D": "Rome"}', 'A', 'Geography', 5, 1),
    ('What is the main programming language used for web development?', NULL, NULL, '{"A": "Java", "B": "Python", "C": "JavaScript", "D": "C#"}', 'C', 'Computer Science', 8, 2);

-- Insert data into QuizDetails table
INSERT INTO QuizDetails (created_by, subject, exam, description, time, karma, attempted_by)
VALUES
    (1, 'Mathematics', 'Final Exam', 'Test your knowledge in advanced mathematics', 60, 15, 20),
    (2, 'Geography', 'Midterm Exam', 'Geography quiz for midterms', 45, 8, 15),
    (3, 'Computer Science', 'Pop Quiz', 'Quick quiz on programming languages', 30, 12, 18);

-- Insert data into Review table
INSERT INTO Review (quiz_id, user_id, karma)
VALUES
    (1, 1, 5),
    (1, 2, 3),
    (2, 3, 4);

-- Insert data into Quizzes table
INSERT INTO Quizzes (quiz_id, question_id)
VALUES
    (1, 1),
    (1, 2),
    (2, 3);
