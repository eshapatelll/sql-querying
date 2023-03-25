USE university;
# Ex1 
SELECT first_name, last_name FROM student;
# Ex2
SELECT instructor_id FROM instructor WHERE tenured = 1;
# Ex3
SELECT  s.first_name AS first_name, s.last_name AS last_name, advisor_id AS advisor_id FROM student s WHERE s.advisor_id IS NOT NULL;
# Ex4
SELECT instructor_id, instructor.first_name, instructor.last_name FROM instructor, student WHERE advisor_id IS NULL;
# Ex5
SELECT instructor.first_name, instructor.last_name, SUM(sections.credit_hours) AS total_credit_hours FROM instructor
JOIN sections ON sections.instructor_id = instructor.id 
GROUP BY 
    instructors.id;
#Ex6
SELECT course_code, course_name FROM course 
WHERE course_code LIKE '3%';

#ex7
SELECT course_code, instructor.first_name, instructor.last_name, course.num_credits FROM student, course, instructor WHERE student.student_id = 1;


