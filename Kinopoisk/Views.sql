USE kinopoisk;

-- Топ 10 фильмов по рейтингу
CREATE OR REPLACE VIEW top_10_movies (movie_id, name, rating) AS
	SELECT m.id AS movie_id, m.name, m.rating
	FROM movies AS m
	ORDER BY rating DESC
	LIMIT 10;
	
SELECT * FROM top_10_movies;


-- Топ 5 пользователей по количеству рецензий
CREATE OR REPLACE VIEW top_5_reviewers (user_name, amount_of_reviews) AS
	SELECT p.name, count(r.id)
	FROM reviews r, profiles p 
	WHERE r.user_id = p.user_id 
	GROUP BY p.user_id
	ORDER BY count(r.id) DESC 
	LIMIT 5;



SELECT * FROM top_5_reviewers;




