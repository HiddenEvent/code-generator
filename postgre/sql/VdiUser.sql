CREATE TABLE xeno.vdi_user (
    id serial NOT NULL ,
    vdi_id integer NOT NULL,
    user_key VARCHAR(100)  NOT NULL,
    status varchar(50) NOT NULL ,
    PRIMARY KEY (id)
);

comment on table xeno.vdi_user is 'VDI-유저';
comment on column xeno.vdi_user.id is '유저 인증 일련번호';
comment on column xeno.vdi_user.vdi_id is  'VDI-ID';
comment on column xeno.vdi_user.user_key is  '유저키';
comment on column xeno.vdi_user.status is  '상태';

alter table xeno.vdi_user add CONSTRAINT FK_vdi_user_vdi FOREIGN KEY (vdi_id) REFERENCES xeno.vdi (id) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table xeno.vdi_user add CONSTRAINT FK_vdi_user_user FOREIGN KEY (user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;