DROP PROCEDURE IF EXISTS mindsurf.UPDATE_TAG;

DELIMITER //

CREATE PROCEDURE mindsurf.UPDATE_TAG
(
    IN user_id INT UNSIGNED,
    IN id INT UNSIGNED,
    IN color VARCHAR(10),
    IN tag VARCHAR(45)
)

BEGIN

UPDATE mindsurf.TAG
    SET TAG.color=color, TAG.tag=tag
    WHERE TAG.id=id AND TAG.user_id=user_id;

END //

DELIMITER ;
