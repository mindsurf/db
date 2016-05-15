DROP PROCEDURE IF EXISTS mindsurf.ACTIVATE_USER;

DELIMITER //

CREATE PROCEDURE mindsurf.ACTIVATE_USER
(
    IN id INT UNSIGNED,
    IN authorname VARCHAR(45)
)

BEGIN

UPDATE mindsurf.USER
    SET authorname=authorname, state= 'U'
    WHERE id=id;

SELECT id, email, authorname, state
    FROM mindsurf.USER
    WHERE USER.id=id;

END //

DELIMITER ;
