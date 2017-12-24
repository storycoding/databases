CREATE DATABASE chat;

USE chat;

/*
CREATE TABLE messages (
 id int NOT NULL AUTO_INCREMENT, -- sets a new id for each entry automatically
 author int NOT NULL, -- not null makes sure it can't accept a new entry without this field
 roomname varchar(12) NOT NULL,
 message text(256) NOT NULL,
 room int NOT NULL,
 primary key (id) -- sets primary key to be the id
);
*/

/* Create other tables and define schemas for them here! */

/*
CREATE TABLE users (
 id int NOT NULL AUTO_INCREMENT,
 name varchar(12) NOT NULL,
 messages int(4),
 primary key (id)
);

CREATE TABLE rooms (
 id int NOT NULL AUTO_INCREMENT,
 name char(12) NOT NULL,
 messages int(4),
 primary key (id)
);
*/

CREATE TABLE IF NOT EXISTS `messages` (
 `id` int NOT NULL AUTO_INCREMENT, -- sets a new id for each entry automatically
 `author` int NOT NULL, -- not null makes sure it can't accept a new entry without this field
 `roomname` varchar(12) NOT NULL,
 `message` text(256) NOT NULL,
  `room` int NOT NULL,
 primary key (`id`) -- sets primary key to be the id
)  DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `users` (
 `id` int NOT NULL AUTO_INCREMENT, -- sets a new id for each entry automatically
 `name` varchar (12) NOT NULL, -- not null makes sure it can't accept a new entry without this field
 primary key (`id`) -- sets primary key to be the id
)  DEFAULT CHARSET=utf8;



CREATE TABLE IF NOT EXISTS `rooms` (
 `id` int NOT NULL AUTO_INCREMENT, -- sets a new id for each entry automatically
 `name` varchar (12) NOT NULL, -- not null makes sure it can't accept a new entry without this field
 primary key (`id`) -- sets primary key to be the id
)  DEFAULT CHARSET=utf8;

INSERT INTO `messages` (`author`, `roomname`, `message`, `room`) VALUES
  ('1', 'lobby', 'The earth is flat', '1'),
  ( '1', 'random', 'It sure is cold out here!', '2');
  
INSERT INTO `users` (`name`) VALUES
  ('nuno'),
  ('aaron');
  
INSERT INTO `rooms` (`name`) VALUES
  ('lobby');


-- insert into users values ('01','Nuno','0001');
-- insert into messages values ('0001', 'Nuno', 'yes-yes-yall!', '1');
-- insert into rooms values ('1','lobby','0001');

/*  Execute this file from the command line by typing:
 *  mysql -u root < server/schema.sql
 *  to create the database and the tables.*/