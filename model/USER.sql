-- -----------------------------------------------------
-- Table `mydb`.`USER`
-- state Visitor User Down
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mindsurf`.`USER` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) NOT NULL,
  `authorname` VARCHAR(45) NULL,
  `state` VARCHAR(1) NOT NULL DEFAULT 'V',
  `timestamp` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC))
ENGINE = InnoDB;

INSERT INTO mindsurf.USER
(
    email,
    authorname
)
VALUES
(
    "",
    "mindsurf"
);
