CREATE DATABASE  IF NOT EXISTS `income_expense_manager` 
USE `income_expense_manager`;
DROP TABLE IF EXISTS `login_form`;
CREATE TABLE `login_form` (
  `UserId` int(11) NOT NULL,
  `UserName` varchar(45) NOT NULL,
  `Password` varchar(8) NOT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
LOCK TABLES `login_form` WRITE;
INSERT INTO `login_form` VALUES (1,'xyz','xyz'),(2,'abc','abc');
UNLOCK TABLES;

