CREATE TABLE `User` (
	`userId` INT NOT NULL AUTO_INCREMENT,
	`userName` VARCHAR(50) NOT NULL,
	`userEmail` varchar(200) NOT NULL,
	PRIMARY KEY (`userId`)
);

CREATE TABLE `Tweet` (
	`tweetId` INT NOT NULL AUTO_INCREMENT,
	`userId` INT NOT NULL,
	`tweetCont` VARCHAR(140) NOT NULL,
	PRIMARY KEY (`tweetId`)
);

CREATE TABLE `Organization` (
	`orgId` DECIMAL NOT NULL AUTO_INCREMENT,
	`orgName` VARCHAR(50) NOT NULL,
	`orgWebSite` varchar(200) NOT NULL,
	PRIMARY KEY (`orgId`)
);

CREATE TABLE `Adhesion` (
	`AdhUser` DECIMAL NOT NULL,
	`AdhOrga` DECIMAL NOT NULL
);

ALTER TABLE `Tweet` ADD CONSTRAINT `Tweet_fk0` FOREIGN KEY (`userId`) REFERENCES `User`(`userId`);

ALTER TABLE `Adhesion` ADD CONSTRAINT `Adhesion_fk0` FOREIGN KEY (`AdhUser`) REFERENCES `User`(`userId`);

ALTER TABLE `Adhesion` ADD CONSTRAINT `Adhesion_fk1` FOREIGN KEY (`AdhOrga`) REFERENCES `Organization`(`orgId`);

