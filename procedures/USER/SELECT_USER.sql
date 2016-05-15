DROP PROCEDURE IF EXISTS mindsurf.SELECT_USER;

DELIMITER //

CREATE PROCEDURE mindsurf.SELECT_USER
(
    IN email VARCHAR(45)
)

BEGIN

SELECT id, email, authorname, state
    FROM mindsurf.USER
    WHERE USER.email=email;

END //

DELIMITER ;
