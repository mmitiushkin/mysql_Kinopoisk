USE kinopoisk;

-- Триггер который добавляет новых друзей в список друзей при принятии заявки в друзья
DROP TRIGGER IF EXISTS add_friends;
delimiter //
CREATE TRIGGER add_friends 
AFTER INSERT ON friend_requests
FOR EACH ROW
	IF NEW.accepted = TRUE THEN
	INSERT INTO friend_list VALUES (NEW.from_user_id, NEW.to_user_id); -- два раза т.к. у Первого пользователя новый друг Второй,
	INSERT INTO friend_list VALUES (NEW.to_user_id, NEW.from_user_id); -- и у Второго новый друг - Первый
END IF
//
delimiter ;



-- Проверка

-- SELECT * FROM friend_list;
-- 
-- INSERT INTO friend_requests VALUES (12, 5, 1);
-- INSERT INTO friend_requests VALUES (3, 20, 0);
-- INSERT INTO friend_requests VALUES (10, 3, 1);
-- 
-- SELECT * FROM friend_list;

