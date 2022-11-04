CREATE TABLE xeno.vdi_user_logs (
    id serial NOT NULL ,
    vdi_user_id integer NOT NULL,
    type varchar(50) NOT NULL ,
    created_date timestamp NOT NULL,
    PRIMARY KEY (id)
);

comment on table xeno.vdi_user_logs is 'VDI-유저-로그';
comment on column xeno.vdi_user_logs.id is 'VDI사용자-로그 일련번호';
comment on column xeno.vdi_user_logs.vdi_user_id is  'VDI사용자ID';
comment on column xeno.vdi_user_logs.type is  '로그종류';
comment on column xeno.vdi_user_logs.created_date is  '생성일';

alter table xeno.vdi_user_logs add CONSTRAINT FK_vdi_user_logs_vdiUser FOREIGN KEY (vdi_user_id) REFERENCES xeno.vdi_user (id) ON DELETE CASCADE ON UPDATE NO ACTION;