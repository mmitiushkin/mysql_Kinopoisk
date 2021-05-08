USE kinopoisk;

-- Пользователи и их рецензии
SELECT r.user_id AS user_id, p.name AS user_name, r.name, r.txt
FROM reviews AS r 
JOIN profiles AS p
ON p.user_id = r.user_id
ORDER BY r.user_id;
