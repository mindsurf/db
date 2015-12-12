DROP TRIGGER IF EXISTS mindsurf.WHEN_UPDATE_IDEA;

DELIMITER //

CREATE TRIGGER mindsurf.WHEN_UPDATE_IDEA AFTER UPDATE ON mindsurf.IDEA

FOR EACH ROW

BEGIN
    
    IF (NEW.tag_id!=OLD.tag_id) THEN
        UPDATE mindsurf.TAG SET ideas=ideas+1 WHERE id=NEW.tag_id;
        UPDATE mindsurf.TAG SET ideas=ideas-1 WHERE id=OLD.tag_id;
    END IF;
    
END //

DELIMITER ;