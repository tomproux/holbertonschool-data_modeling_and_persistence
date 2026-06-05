SELECT c.title, COUNT(r.student_id) as registration_count
FROM courses c
LEFT JOIN registrations r ON c.id = r.course_id
GROUP BY c.id, c.title
ORDER BY registration_count DESC, c.title;
