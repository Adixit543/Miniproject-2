CREATE DATABASE  IF NOT EXISTS `income_expense_manager` 
USE `income_expense_manager`;
DROP TABLE IF EXISTS `in_out_table`;
CREATE TABLE `in_out_table` (
  `UserId` int(11) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `T_Date` date NOT NULL,
  `Source` varchar(25) NOT NULL,
  `Discription` varchar(45) DEFAULT NULL,
  `Amount` float NOT NULL,
  KEY `UserId` (`UserId`),
  CONSTRAINT `in_out_table_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `login_form` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
LOCK TABLES `in_out_table` WRITE;
INSERT INTO `in_out_table` VALUES (1,'Income','2017-05-25','Salary','my	',100000),(1,'Income','2017-05-25','Rant','city home	',5000),(2,'Income','2017-05-27','Salary','office',18000),(2,'Expense','2017-05-27','Rant','ghar nu bhadu',3000),(2,'Expense','2017-05-27','Gas/Oil','batlo',800),(2,'Expense','2017-05-29','Mobile/Internet bils','balance',500),(2,'Expense','2017-05-31','vagitables','home',400),(2,'Expense','2017-05-31','hghjgh','yutyu',546),(1,'Expense','2017-06-06','Rent','home',5000),(1,'Expense','2017-06-07','Gas','',900),(2,'Income','2017-06-07','Food','Tefin',50),(2,'Expense','2017-06-07','Food','Tefin',50),(2,'Expense','2017-06-07','Mobile/Internet bils','mobile',500),(1,'Income','2017-06-14','Salary','Office',100000),(1,'Income','2017-06-14','Salary','Office',100000),(1,'Expense','2017-06-14','Mobile/Internet bils','Recharge',200),(2,'Income','2017-06-01','Salary','',18000),(2,'Income','2017-05-01','Salary','',18000),(2,'Income','2017-05-31','Rent','house',5000);
UNLOCK TABLES;

