DROP PROCEDURE IF EXISTS mindsurf.INSERT_IDEA;

DELIMITER //

CREATE PROCEDURE mindsurf.INSERT_IDEA
(
    IN user_id INT UNSIGNED,
    IN idea MEDIUMTEXT,
    IN reference TINYTEXT,
    IN tag_id INT UNSIGNED
)

BEGIN

INSERT INTO mindsurf.IDEA ( user_id, idea, reference, tag_id )
    VALUES ( user_id, idea, reference, tag_id );

END //

DELIMITER ;