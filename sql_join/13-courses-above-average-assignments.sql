SELECT c.title
FROM courses c
INNER JOIN assignments a ON c.id = a.course_id
GROUP BY c.id, c.title
HAVING COUNT(a.id) > (
  SELECT AVG(assignment_count)
  FROM (
    SELECT COUNT(id) as assignment_count
    FROM assignments
    GROUP BY course_id
  )
)
ORDER BY c.title;
