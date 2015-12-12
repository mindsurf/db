DROP PROCEDURE IF EXISTS mindsurf.SELECT_IDEAS_BELLOW;

DELIMITER //

CREATE PROCEDURE mindsurf.SELECT_IDEAS_BELLOW
(
    IN user_id INT UNSIGNED,
    IN n INT UNSIGNED,
    IN bellow_of_id INT UNSIGNED
)

BEGIN

IF (bellow_of_id IS NULL) THEN
    SELECT id,idea,reference,tag_id,timestamp
    FROM mindsurf.IDEA
    WHERE IDEA.user_id=user_id
    ORDER BY id DESC
    LIMIT n;
ELSE
    SELECT id,idea,reference,tag_id,timestamp
    FROM mindsurf.IDEA
    WHERE IDEA.user_id=user_id AND IDEA.id<bellow_of_id
    ORDER BY id DESC
    LIMIT n;
END IF;

END //

DELIMITER ;