CREATE TABLE code (
    id serial NOT NULL ,
    parent_id integer NULL ,
    type varchar(50) NOT NULL ,
    name VARCHAR(100) NOT NULL,
    value varchar(100) NOT NULL ,
    used boolean default true NOT NULL,
    PRIMARY KEY (id)
);

comment on table code is '코드';
comment on column code.id is '코드-일련번호';
comment on column code.parent_id is  '상위코드-일련번호';
comment on column code.type is  '종류(SYSTEM,WORK)';
comment on column code.name is  '코드네임';
comment on column xeno.code.value is  '코드값';
comment on column xeno.code.used is  '사용여부';