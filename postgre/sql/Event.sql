CREATE TABLE event (
    id serial NOT NULL,
    type varchar(50) NOT NULL,
    name varchar(500) NOT NULL,
    deleted boolean default false NOT NULL,
    PRIMARY KEY (id)
);

comment on table event is '이벤트';
comment on column xeno.event.id is '이벤트 일련번호';
comment on column xeno.event.type is  '종류';
comment on column xeno.event.name is  '이름';
comment on column xeno.event.deleted is '삭제여부';


