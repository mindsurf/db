-- -----------------------------------------------------
-- Table `mindsurf`.`IDEA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mindsurf`.`IDEA` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` INT UNSIGNED NOT NULL,
  `idea` MEDIUMTEXT NOT NULL,
  `reference` TINYTEXT NULL,
  `tag_id` INT UNSIGNED NOT NULL,
  `timestamp` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  INDEX `fk_IDEA_USER_idx` (`user_id` ASC),
  INDEX `fk_IDEA_TAG_idx` (`tag_id` ASC),
  CONSTRAINT `fk_IDEA_USER`
    FOREIGN KEY (`user_id`)
    REFERENCES `mindsurf`.`USER` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_IDEA_TAG`
    FOREIGN KEY (`tag_id`)
    REFERENCES `mindsurf`.`TAG` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
