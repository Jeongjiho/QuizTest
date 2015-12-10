create table board (
  no               int not null ,
  title           varchar(100) not null,
  writer         varchar(100) not null,
  content        varchar(225),
  views           int(4) default 0,
  cr_dt   varchar(100),
  password       varchar(200),
  photo            varchar(200),
  afile      varchar(200),
  pwd       varchar(255),
  constraint board_pk primary key (no)
  );