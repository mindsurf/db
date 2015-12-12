DROP PROCEDURE IF EXISTS mindsurf.DELETE_TAG;

DELIMITER //

CREATE PROCEDURE mindsurf.DELETE_TAG
(
    IN user_id INT UNSIGNED,
    IN id INT UNSIGNED
)

BEGIN

DECLARE default_tag_id INT UNSIGNED;

SELECT MIN(TAG.id) INTO default_tag_id
    FROM mindsurf.TAG 
    WHERE TAG.user_id=user_id;

IF default_tag_id<id THEN

    UPDATE mindsurf.IDEA SET tag_id=default_tag_id
        WHERE IDEA.tag_id=id AND IDEA.user_id=user_id;
        
    DELETE FROM mindsurf.TAG
        WHERE TAG.id=id AND TAG.user_id=user_id;

END IF;

END //

DELIMITER ;