-- -----------------------------------------------------
-- Table `mindsurf`.`COLORTAG`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mindsurf`.`TAG` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` INT UNSIGNED NOT NULL,
  `color` VARCHAR(10) NOT NULL,
  `tag` VARCHAR(45) NOT NULL,
  `ideas` INT UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  INDEX `fk_IDEA_USER_idx` (`user_id` ASC),
  CONSTRAINT `fk_COLORTAG_USER`
    FOREIGN KEY (`user_id`)
    REFERENCES `mindsurf`.`USER` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
