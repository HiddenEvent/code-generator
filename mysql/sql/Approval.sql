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


ALTER TABLE approval COMMENT '결재';
ALTER TABLE approval MODIFY id serial NOT NULL COMMENT '결재 일련번호';
ALTER TABLE approval MODIFY type varchar(50) NOT NULL  COMMENT '종류';
ALTER TABLE approval MODIFY status varchar(50) NOT NULL COMMENT '상태';
ALTER TABLE approval MODIFY reason varchar(500) NULL  COMMENT '사유';
ALTER TABLE approval MODIFY deleted boolean default false NOT NULL COMMENT '삭제여부';
ALTER TABLE approval MODIFY created_user_key varchar(100) NOT NULL COMMENT '생성자';
ALTER TABLE approval MODIFY modified_user_key varchar(100) NULL COMMENT '수정자';
ALTER TABLE approval MODIFY created_date timestamp NOT NULL  COMMENT '생성일';
ALTER TABLE approval MODIFY modified_date timestamp NULL COMMENT '수정일';


alter table approval add CONSTRAINT FK_approval_createdUser FOREIGN KEY (created_user_key) REFERENCES users (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table approval add CONSTRAINT FK_approval_modifiedUser FOREIGN KEY (modified_user_key) REFERENCES users (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;

