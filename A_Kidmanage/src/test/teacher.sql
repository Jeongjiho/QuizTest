create table teacher (
name varchar(100) not null,
email varchar(100) not null,
cid varchar(100) not null,
phone varchar(100),
photo varchar(100),
password varchar(255) not null,
constraint parent_pk primary key (email)
);