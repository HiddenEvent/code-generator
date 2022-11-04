CREATE TABLE xeno.file (
    id serial NOT NULL ,
    name varchar(100) NOT NULL,
    real_name varchar(100) NOT NULL,
    path varchar(300) NOT NULL,
    size integer NOT NULL,
    deleted boolean default false NOT NULL,
    created_date timestamp NOT NULL,
    modified_date timestamp NULL,
    PRIMARY KEY (id)
);

comment on table xeno.file is '파일';
comment on column xeno.file.id is '파일일련번호';
comment on column xeno.file.name is '파일이름';
comment on column xeno.file.real_name is '진짜이름';
comment on column xeno.file.path is '파일경로';
comment on column xeno.file.size is '파일사이즈';
comment on column xeno.file.deleted is '삭제여부';
comment on column xeno.file.created_date is '생성일';
comment on column xeno.file.modified_date is '수정일';






