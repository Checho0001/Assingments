INSERT INTO students (name) VALUES 
  ('John Doe'), 
  ('Alice Smith'), 
  ('Bob Smith'), 
  ('Charlie Brown'), 
  ('Dora Brown'), 
  ('Eve White'), 
  ('Frank Black'), 
  ('Grace Black'), 
  ('Hank Green'), 
  ('Ivy Green');

INSERT INTO instructors(name, email) VALUES 
  ('Reza', 'reza@cctb.com'), 
  ('Washington', 'washington@cctb.com'), 
  ('Henry', 'henry@cctb.com'), 
  ('Jivesh', 'jivesh@cctb.com'), 
  ('Paul', 'paul@cctb.com'), 
  ('Jhon', 'jhon@cctb.com'),
  ('Pedro', 'pedro@cctb.com'),
  ('George', 'george@cctb.com'),
  ('Ryan', 'ryan@cctb.com'),
  ('Susan', 'susan@cctb.com');

insert into courses (instructor_id,title,category) values
  (1,'Introduction programming','Tech'),
  (2,'Introduction Bussiness','Bussiness'),
  (1,'Introduction CSS','Tech'),
  (3,'Arts I','Arts'),
  (3,'Arts II','Arts'),
  (4,'programming I','Tech'),
  (1,'Data modeling','Tech');

INSERT INTO modules (course_id, title) VALUES
(1, 'Introduction to Programming'),
(1, 'Data Structures'),
(1, 'Algorithms'),
(2, 'Web Design Basics'),
(2, 'CSS Fundamentals'),
(2, 'JavaScript Essentials'),
(3, 'Database Design'),
(3, 'SQL Fundamentals'),
(3, 'Advanced SQL Queries'),
(4, 'Machine Learning Basics'),
(4, 'Neural Networks'),
(4, 'Deep Learning'),
(5, 'Digital Marketing Strategy'),
(5, 'Social Media Marketing'),
(5, 'SEO Techniques'),
(6, 'Financial Accounting'),
(6, 'Managerial Accounting'),
(6, 'Corporate Finance'),
(7, 'Project Management Fundamentals'),
(7, 'Agile Methodologies'),
( 7, 'Risk Management');

insert into reviews (student_id, course_id, rating, comment, review_date) values
  (1,1,5.0, 'The course is amazing good.', '2025-03-11'),
  (2,2,4.0, 'The course is good.', '2025-03-11'),
  (3,3,3.0, 'The course is OK.', '2025-03-11'),
  (4,4,2.0, 'The course sucks', '2025-03-11'),
  (5,5,1.0, 'The course is terrible.', '2025-03-11'),
  (6,6,3.0, 'The course is nice', '2025-03-11'),
  (7,7,1.0, 'I will never enroll this course.', '2025-03-11'),
  (8,1,4.5, 'Awesome', '2025-03-11'),
  (9,2,5.0, 'Amazing', '2025-03-11'),
  (10,3,2.5, 'Frustrating', '2025-03-11');

INSERT INTO enrollments(student_id, course_id, last_login_date, enrollment_date, active) VALUES
  ('1', '1', '2024-04-10', '2025-03-10', true),
  ('2', '3', '2024-07-08', '2025-03-10', true),
  ('3', '3', '2024-01-06', '2025-03-10', true),
  ('4', '2', '2024-08-01', '2025-03-10', true),
  ('5', '2', '2024-01-06', '2025-03-10', true),
  ('6', '7', '2024-08-01', '2025-03-10', true),
  ('7', '5', '2024-01-06', '2025-03-10', true),
  ('8', '4', '2024-08-01', '2025-01-06', false),
  ('9', '1', '2024-01-06', '2025-03-10', true),
  ('10', '5', '2024-08-01', '2025-03-10', true);

  INSERT INTO assessments (module_id, student_id, grade, expected_grade, deadline_date)
VALUES 
(1, 1, 85.5, 90.0, '2025-03-15'),
(2, 1, 78.0, 85.0, '2025-03-20'),
(3, 1, 92.5, 95.0, '2025-03-25'),
(1, 2, 88.0, 92.0, '2025-03-15'),
(2, 2, 76.5, 80.0, '2025-03-20'),
(3, 2, 95.0, 90.0, '2025-03-25'),
(4, 3, 82.0, 88.0, '2025-03-18'),
(5, 3, 79.5, 85.0, '2025-03-23'),
(6, 3, 91.0, 93.0, '2025-03-28'),
(4, 4, 87.5, 90.0, '2025-03-18'),
(5, 4, 81.0, 86.0, '2025-03-23'),
(6, 4, 93.5, 95.0, '2025-03-28');

INSERT INTO submissions (student_id, assessment_id, submission_date)
VALUES 
(1, 1, '2023-01-15'),
(1, 1, '2023-02-01'),
(1, 1, '2023-02-15'),
(1, 2, '2023-03-01'),
(1, 2, '2023-03-15'),
(2, 2, '2023-01-20'),
(2, 3, '2023-02-05'),
(2, 3, '2023-02-20'),
(2, 3, '2023-03-05'),
(2, 1, '2023-03-20'),
(3, 1, '2023-01-25'),
(3, 2, '2023-02-10'),
(3, 3, '2023-02-25'),
(3, 4, '2023-03-10'),
(3, 4, '2023-03-25');


-- Queries
-- 1. Which courses have the most students enrolled this month?
SELECT * 
FROM COURSES
    LEFT JOIN ENROLLMENTS ON COURSES.course_id = ENROLLMENTS.course_id 
    WHERE enrollment_date BETWEEN '2024-01-01' AND '2024-12-31'
    COUNT (course_id) AS total_enrolled 
    order by total_enrolled DESC;

-- 2. What are the top 5 trending courses based on enrollment growth over the last 3 months?

-- SELECT course_id, enrollment_date, COUNT(*) AS enrollment_count
-- FROM ENROLLMENTS
-- WHERE enrollment_date BETWEEN '2024-01-01' AND '2024-12-31'
-- ORDER BY enrollment_count DESC
-- LIMIT 5;

-- 3. Which categories (e.g., Data Science, Programming) have the highest number of enrolled students?

-- SELECT category, COUNT(*) AS total_enrolled
-- FROM ENROLLMENTS
-- GROUP BY category
-- ORDER BY total_enrolled DESC;


-- 4. What is the total revenue from Premium subscriptions in the last quarter? (last 3 months)


-- 5. What percentage of total revenue comes from subscription payments versus one-time course purchases?