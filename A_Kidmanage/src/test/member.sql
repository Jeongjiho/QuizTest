create table member (
  name       varchar(20) not null,
  id           varchar(20) not null,
  pwd         varchar(20) not null,
  tel          varchar(20),
  address     varchar(100),
  email       varchar(100),
  photo       varchar(200),
  constraint member_pk primary key (id)
  );