DROP PROCEDURE IF EXISTS mindsurf.INSERT_TAG;

DELIMITER //

CREATE PROCEDURE mindsurf.INSERT_TAG
(
    IN user_id INT UNSIGNED,
    IN color VARCHAR(10),
    IN tag VARCHAR(45)
)

BEGIN

INSERT INTO mindsurf.TAG ( user_id , color, tag )
    VALUES ( user_id, color, tag );

END //

DELIMITER ;