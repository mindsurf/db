DROP PROCEDURE IF EXISTS mindsurf.SELECT_IDEAS_ONTOP;

DELIMITER //

CREATE PROCEDURE mindsurf.SELECT_IDEAS_ONTOP
(
    IN user_id INT UNSIGNED,
    IN top_of_id INT UNSIGNED
)

BEGIN

SELECT id,idea,reference,tag_id,timestamp
FROM mindsurf.IDEA
WHERE IDEA.user_id=user_id AND IDEA.id>top_of_id;

END //

DELIMITER ;