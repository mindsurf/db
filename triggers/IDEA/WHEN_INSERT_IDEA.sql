DROP TRIGGER IF EXISTS mindsurf.WHEN_INSERT_IDEA;

DELIMITER //

CREATE TRIGGER mindsurf.WHEN_INSERT_IDEA AFTER INSERT ON mindsurf.IDEA

FOR EACH ROW

BEGIN

UPDATE mindsurf.TAG SET ideas=ideas+1 WHERE id=NEW.tag_id;

END //

DELIMITER ;