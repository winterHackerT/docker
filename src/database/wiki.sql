
CREATE TABLE `Documents` (
  `id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `title` VARCHAR(200) NOT NULL,
  `content` TEXT NOT NULL,
  `datetime` DATETIME NOT NULL DEFAULT now(),
  `status` VARCHAR(100) NOT NULL DEFAULT "public",
  `user` INT,
  `addr` VARCHAR(100),
  FOREIGN KEY (`user`) REFERENCES `Users`(`id`)
);

CREATE TABLE `Users` (
  `id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `username` VARCHAR(200) NOT NULL UNIQUE,
  `password` VARCHAR(500) NOT NULL,
  `email` VARCHAR(500) NOT NULL,
  `access_addr` VARCHAR(100),
);

CREATE TABLE `DocumentTopic` ();
