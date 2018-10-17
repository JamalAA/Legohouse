DROP TABLE IF EXISTS `order`;
DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) AUTO_INCREMENT,
  `email` varchar(90) NOT NULL,
   `firstname` varchar(90),
    `lastname` varchar(90),	
  `password` varchar(45) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'customer',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
  
) ENGINE=InnoDB ;

CREATE TABLE `order` (
  `order_id` INT NOT NULL AUTO_INCREMENT,
  `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `length` INT NOT NULL,
  `width` INT NOT NULL,
  `layers` INT NOT NULL,
  `orderStatus` ENUM('PROCESSING', 'SENT') NOT NULL DEFAULT 'PROCESSING',
  `user_id` INT NOT NULL,
  primary key(`order_id`,`user_id`),
  CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `lego`.`user` (`id`)
 
   
)ENGINE = InnoDB;


INSERT INTO `lego`.`user` (`email`, `firstname`, `password`,`role`) VALUES 
('jens@somewhere.com', 'jensen', 'jensen','customer'),
('ken@somewhere.com', 'ken', 'kensen','customer'),
('robin@somewhere.com', 'robin', 'batman','employee');
