DROP TABLE IF EXISTS `size`;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `size` (
   `user_id`int NOT NULL,
   `lenght` int,
    `width` int,	
    `heigth` int,
CONSTRAINT `u`FOREIGN KEY (`user_id`) REFERENCES `lego`.`user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `lego`.`user` (`email`, `firstname`, `password`,`role`) VALUES 
('jens@somewhere.com', 'jensen', 'jensen','customer'),
('ken@somewhere.com', 'ken', 'kensen','customer'),
('robin@somewhere.com', 'robin', 'batman','employee');


