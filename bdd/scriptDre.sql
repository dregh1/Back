create database oma;
	alter database oma owner to dre;
drop table personnel;
drop sequence Personnel_SEQ cascade ;
create  sequence  Personnel_SEQ INCREMENT BY 50;

	create table personnel
		(
			id bigint primary key default (nextval('Personnel_SEQ')),
			nom varchar(50) ,
			prenom varchar(50) ,
			age integer
		);

alter table login add foreign key (idPersonnel) references personnel(id);

create  sequence  Login_SEQ INCREMENT BY 50;
	create table login
		(
			id bigint primary key default (nextval('Login_seq')),
			username varchar(50) not null,
			password varchar(50) not null,
			idPersonnel bigint 

		);


insert into login (username,password,idPersonnel) values ('rabe@gmail.com','rabe123',3) ;
	