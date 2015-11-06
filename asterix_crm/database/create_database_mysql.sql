create database asterixdb;

use asterixdb;

create user asterix_user;

grant all on asterixdb.* to 'asterix_user'@'localhost' identified by 'obelix';