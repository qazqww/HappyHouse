CREATE TABLE IF NOT EXISTS `happyhouse`.`apartvalue` (
  `gugunCode` VARCHAR(10) NOT NULL,
  `average` INT NOT NULL,
  PRIMARY KEY (`gugunCode`),
  INDEX `apartvalue_to_guguncode_fk_idx` (`gugunCode` ASC) VISIBLE,
  CONSTRAINT `apartvalue_to_guguncode_fk`
    FOREIGN KEY (`gugunCode`)
    REFERENCES `happyhouse`.`guguncode` (`gugunCode`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;