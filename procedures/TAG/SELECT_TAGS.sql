DROP PROCEDURE IF EXISTS mindsurf.SELECT_TAGS;

DELIMITER //

CREATE PROCEDURE mindsurf.SELECT_TAGS
(
    IN user_id INT UNSIGNED
)

BEGIN

SELECT id, color, tag, ideas
    FROM mindsurf.TAG
    WHERE TAG.user_id=user_id;
    
END //

DELIMITER ;