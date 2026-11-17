USE hw1_school;

-- 1. SELECT + WHERE + ORDER BY
SELECT full_name, birth_year FROM students WHERE birth_year >= 2004 ORDER BY full_name;

-- 2. JOIN nhiều bảng: điểm của từng sinh viên theo môn
SELECT s.full_name, c.title, e.score
FROM enrollments e
JOIN students s ON s.id = e.student_id
JOIN courses  c ON c.id = e.course_id
ORDER BY s.full_name, c.title;

-- 3. GROUP BY + hàm gộp: điểm trung bình mỗi môn
SELECT c.title, COUNT(e.student_id) AS so_sv, ROUND(AVG(e.score),2) AS diem_tb
FROM courses c LEFT JOIN enrollments e ON e.course_id = c.id
GROUP BY c.id, c.title
HAVING so_sv > 0;

-- 4. LEFT JOIN: sinh viên chưa đăng ký môn nào
SELECT s.full_name FROM students s
LEFT JOIN enrollments e ON e.student_id = s.id
WHERE e.student_id IS NULL;

-- 5. Truy vấn con: sinh viên có điểm cao hơn điểm trung bình chung
SELECT DISTINCT s.full_name
FROM students s JOIN enrollments e ON e.student_id = s.id
WHERE e.score > (SELECT AVG(score) FROM enrollments);

-- 6. UPDATE / DELETE
UPDATE enrollments SET score = 7.5 WHERE student_id = 3 AND course_id = 1;
DELETE FROM students WHERE email = 'dung@example.com';   -- ON DELETE CASCADE xóa luôn đăng ký liên quan

-- 7. Transaction
START TRANSACTION;
UPDATE enrollments SET score = 10 WHERE student_id = 1 AND course_id = 1;
ROLLBACK;                                                 -- hủy thay đổi

-- 8. Index và EXPLAIN
CREATE INDEX idx_students_birth ON students(birth_year);
EXPLAIN SELECT * FROM students WHERE birth_year = 2004;
