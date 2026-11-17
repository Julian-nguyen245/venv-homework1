USE hw1_school;

INSERT INTO students (full_name, email, birth_year) VALUES
 ('Nguyễn Văn An',  'an@example.com',   2004),
 ('Trần Thị Bình',  'binh@example.com', 2005),
 ('Lê Hoàng Cường', 'cuong@example.com',2004),
 ('Phạm Minh Dũng', 'dung@example.com', 2003);

INSERT INTO courses (title, credits) VALUES
 ('Cơ sở dữ liệu', 3),
 ('Lập trình Python', 4),
 ('Mạng máy tính', 3);

INSERT INTO enrollments (student_id, course_id, score) VALUES
 (1,1,8.5),(1,2,9.0),(2,1,7.0),(2,3,6.5),(3,2,8.0),(3,1,NULL);
