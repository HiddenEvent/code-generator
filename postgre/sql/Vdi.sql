CREATE TABLE vdi (
    id serial NOT NULL,
    type varchar(50) NOT NULL ,
    name varchar(100) NOT NULL ,
    os varchar(50) NOT NULL,
    cpu varchar(200) NOT NULL,
    memory varchar(200) NOT NULL,
    version varchar(50) NOT NULL,
    start_date timestamp NULL ,
    end_date timestamp NULL ,
    ip varchar(20) NULL ,
    mac_address varchar(100) NULL,
    memo varchar(1000) NULL,
    used boolean default true NOT NULL,
    deleted boolean default false NOT NULL,
    created_user_key varchar(100) NOT NULL,
    modified_user_key varchar(100) NULL,
    created_date timestamp NOT NULL,
    modified_date timestamp NULL,
    PRIMARY KEY (id)
);


comment on table vdi is 'VDI';
comment on column vdi.id is '게시판 일련번호';
comment on column vdi.type is '종류';
comment on column vdi.name is '이름';
comment on column vdi.os is 'OS';
comment on column vdi.cpu is 'CPU';
comment on column vdi.memory is 'MEMORY';
comment on column vdi.version is 'VERSION';
comment on column vdi.start_date is '사용시작일';
comment on column vdi.end_date is '사용종료일';
comment on column vdi.ip is 'IP';
comment on column vdi.mac_address is 'MAC ADDRESS';
comment on column vdi.memo is 'MEMO';
comment on column vdi.used is '사용여부';
comment on column vdi.deleted is '삭제여부';
comment on column vdi.created_user_key is '생성자';
comment on column vdi.modified_user_key is '수정자';
comment on column vdi.created_date is '생성일';
comment on column vdi.modified_date is '수정일';

alter table vdi add CONSTRAINT FK_vdi_createdUser FOREIGN KEY (created_user_key) REFERENCES users (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table vdi add CONSTRAINT FK_vdi_modifiedUser FOREIGN KEY (modified_user_key) REFERENCES users (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;

