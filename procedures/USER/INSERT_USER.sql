DROP PROCEDURE IF EXISTS mindsurf.INSERT_USER;

DELIMITER //

CREATE PROCEDURE mindsurf.INSERT_USER
(
    IN email VARCHAR(45),
    IN authorname VARCHAR(45)
)

BEGIN

INSERT INTO mindsurf.USER ( email, authorname )
    VALUES ( email, authorname );

SELECT id, email, authorname
    FROM mindsurf.USER
    WHERE USER.email=email;

END //

DELIMITER ;

