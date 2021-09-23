create database if not exists socialmedia;

use socialmedia;

drop table if exists comments;
drop table if exists posts;
drop table if exists users;

create table users (
	username varchar(25) not null,
	email varchar(25) not null,
	password varchar (25) not null,
	primary key (username)
);

create table posts (
	id int(11) not null auto_increment,
	username varchar(25) not null,
	post varchar(255) not null,
	date_posted datetime default current_timestamp,
	primary key (id),
	foreign key (username) references users (username)
);

create table comments (
	id int(11) not null auto_increment, 
	username varchar(25) not null,
	post_id int(11) not null,
	comment varchar(255) not null,
	date_commented datetime default current_timestamp,
	primary key (id),
	foreign key (username) references users (username), 
	foreign key (post_id) references posts (id)
);

insert into users values('scottj', 'scottj@gmail.com', '1234');
insert into users values('kimb', 'kimb@gmail.com', '2345');
insert into users values('johns', 'johns@gmail.com', '3456');

insert into posts(username, post) values ('scottj', "This is my first post");
insert into posts(username, post)  values ('scottj', "This is my second post");
insert into posts(username, post)  values ('scottj', "This is my third post");

insert into posts(username, post)  values ('kimb', "This is my 1st post");
insert into posts(username, post)  values ('kimb', "This is my 2nd post");

insert into posts(username, post)  values ('johns', "This is my first post!!!");
insert into posts(username, post)  values ('johns', "This is my second post!!!");
insert into posts(username, post)  values ('johns', "This is my third post!!!");
insert into posts(username, post)  values ('johns', "This is my fourth post!!!");
insert into posts(username, post)  values ('johns', "This is my fifth post!!!");

insert into posts(username, post)  values ('scottj', "This is my fourth post");

insert into comments (username, post_id, comment)  values ('kimb', 1, "Awesome, welcome!");
insert into comments (username, post_id, comment)  values ('johns', 1, "Cool");
insert into comments (username, post_id, comment)  values ('scottj', 1, "Thanks!");

insert into comments (username, post_id, comment)  values ('scottj', 4, "Way to go!");
insert into comments (username, post_id, comment)  values ('johns', 4, "Well done");
insert into comments (username, post_id, comment)  values ('kimb', 4, "Thank you");

insert into comments (username, post_id, comment)  values ('scottj', 6, "Nice");
insert into comments (username, post_id, comment)  values ('kimb', 6, "I'm happy for you");
insert into comments (username, post_id, comment)  values ('johns', 6, "I appreciate it");


	
