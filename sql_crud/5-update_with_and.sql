UPDATE books
SET price * 1.10
WHERE genre = 'Tech'
AND stock > 5;
