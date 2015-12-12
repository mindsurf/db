DROP PROCEDURE IF EXISTS mindsurf.UPDATE_IDEA;

DELIMITER //

CREATE PROCEDURE mindsurf.UPDATE_IDEA
(
    IN id INT UNSIGNED,
    IN idea MEDIUMTEXT,
    IN reference TINYTEXT,
    IN colortag INT UNSIGNED
)

BEGIN

UPDATE mindsurf.IDEA
    SET idea=idea, reference=reference, colortag=colortag
    WHERE IDEA.id=id;

END //

DELIMITER ;
