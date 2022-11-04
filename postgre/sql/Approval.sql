CREATE TABLE approval (
    id serial NOT NULL,
    type varchar(50) NOT NULL ,
    status varchar(50) NOT NULL,
    reason varchar(500) NULL ,
    deleted boolean default false NOT NULL,
    created_user_key varchar(100) NOT NULL,
    modified_user_key varchar(100) NULL,
    created_date timestamp NOT NULL ,
    modified_date timestamp NULL,
    PRIMARY KEY (id)
);


comment on table approval is '결재';
comment on column approval.id is '결재 일련번호';
comment on column approval.type is '종류';
comment on column approval.status is '상태';
comment on column approval.reason is '사유';
comment on column approval.deleted is '삭제여부';
comment on column approval.created_user_key is '생성자';
comment on column approval.modified_user_key is '수정자';
comment on column approval.created_date is '생성일';
comment on column approval.modified_date is '수정일';


alter table approval add CONSTRAINT FK_approval_createdUser FOREIGN KEY (created_user_key) REFERENCES users (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table approval add CONSTRAINT FK_approval_modifiedUser FOREIGN KEY (modified_user_key) REFERENCES users (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;

