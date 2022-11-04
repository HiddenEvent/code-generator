CREATE TABLE xeno.vdi_request_approval_user (
    id serial NOT NULL,
    vdi_request_id integer NOT NULL,
    approval_id integer NOT NULL,
    user_key VARCHAR(100) NOT NULL,
    status varchar(50) NOT NULL,
    reason varchar(500) NULL,
    PRIMARY KEY (id)
);

comment on table xeno.vdi_request_approval_user is 'VDI결재-유저';
comment on column xeno.vdi_request_approval_user.id is 'VDI결재-유저 일련번호';
comment on column xeno.vdi_request_approval_user.vdi_request_id is 'VDI요청ID';
comment on column xeno.vdi_request_approval_user.approval_id is '결재ID';
comment on column xeno.vdi_request_approval_user.user_key is '유저키';
comment on column xeno.vdi_request_approval_user.status is '상태';
comment on column xeno.vdi_request_approval_user.reason is '사유';


alter table xeno.vdi_request_approval_user add CONSTRAINT FK_vdi_request_approval_user_vdiRequest FOREIGN KEY (vdi_request_id) REFERENCES xeno.vdi_request (id) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table xeno.vdi_request_approval_user add CONSTRAINT FK_vdi_request_approval_user_approval FOREIGN KEY (approval_id) REFERENCES xeno.approval (id) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table xeno.vdi_request_approval_user add CONSTRAINT FK_vdi_request_approval_user_approvalUser FOREIGN KEY (user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;