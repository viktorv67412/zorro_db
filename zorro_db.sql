 
create database zorro;
use zorro;

create table user(
	id int not null auto_increment,
	role_id int,
	name varchar(10) not null,
	password varchar(8) not null,
	primary key(id),
	foreign key(role_id) references role(id)
	on delete cascade on update cascade
);

create table role (
	id int not null auto_increment,
	user_id int not null,
	name varchar(10) not null,
	primary key(id),
	foreign key(user_id) references user(id)
	on delete cascade on update cascade
);

create table statistics(
	id int not null auto_increment,
	user_id int not null,
	login datetime not null
	logout datetime not null
	create_query datetime not null
	primary key(id);
	foreign key(user_id) references user(id)
	on delete cascade on update cascade
);
