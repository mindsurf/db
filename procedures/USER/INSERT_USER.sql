DROP PROCEDURE IF EXISTS mindsurf.INSERT_USER;

DELIMITER //

CREATE PROCEDURE mindsurf.INSERT_USER
(
    IN email VARCHAR(45)
)

BEGIN

INSERT INTO mindsurf.USER ( email )
    VALUES ( email );

SELECT id, email, authorname, state
    FROM mindsurf.USER
    WHERE USER.email=email;

END //

DELIMITER ;
