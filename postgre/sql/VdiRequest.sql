CREATE TABLE xeno.vdi_request (
    id serial NOT NULL,
    type varchar(50) NOT NULL ,
    new_used boolean NULL,
    update_used boolean NULL,
    reset_used boolean NULL,
    return_used boolean NULL,
    user_update_used boolean NULL,
    working_home_used boolean NULL,
    program_install_used boolean NULL,
    vdi_id integer NULL ,
    password varchar(300) NULL ,
    work_type varchar(50) NULL ,
    reason varchar(500) NULL ,
    status varchar(50) NOT NULL,
    deleted boolean default false NOT NULL,
    created_user_key varchar(100) NULL ,
    created_date timestamp NOT NULL ,
    PRIMARY KEY (id)
);


comment on table xeno.vdi_request is 'VDI요청';
comment on column xeno.vdi_request.id is 'VDI요청-일련번호';
comment on column xeno.vdi_request.type is '종류';
comment on column xeno.vdi_request.new_used is '신규-사용여부';
comment on column xeno.vdi_request.update_used is '변경-사용여부';
comment on column xeno.vdi_request.reset_used is '초기화-사용여부';
comment on column xeno.vdi_request.return_used is '반납-사용여부';
comment on column xeno.vdi_request.user_update_used is '사용자변경-사용여부';
comment on column xeno.vdi_request.working_home_used is '재택근무-사용여부';
comment on column xeno.vdi_request.program_install_used is '프로그램설치-사용여부';
comment on column xeno.vdi_request.vdi_id is 'VDI-ID';
comment on column xeno.vdi_request.password is '비밀번호';
comment on column xeno.vdi_request.work_type is '업무유형';
comment on column xeno.vdi_request.reason is '목적';
comment on column xeno.vdi_request.status is '상태';
comment on column xeno.vdi_request.deleted is '삭제여부';
comment on column xeno.vdi_request.created_user_key is '작성자';
comment on column xeno.vdi_request.created_date is '작성일';


alter table xeno.vdi_request add CONSTRAINT FK_vdi_request_vdi FOREIGN KEY (vdi_id) REFERENCES xeno.vdi (id) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table xeno.vdi_request add CONSTRAINT FK_vdi_request_createdUser FOREIGN KEY (created_user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;









