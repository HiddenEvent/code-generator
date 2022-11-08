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


ALTER TABLE vdi COMMENT 'VDI';
ALTER TABLE vdi MODIFY id serial NOT NULL COMMENT '게시판 일련번호';
ALTER TABLE vdi MODIFY type varchar(50) NOT NULL  COMMENT '종류';
ALTER TABLE vdi MODIFY name varchar(100) NOT NULL  COMMENT '이름';
ALTER TABLE vdi MODIFY os varchar(50) NOT NULL COMMENT 'OS';
ALTER TABLE vdi MODIFY cpu varchar(200) NOT NULL COMMENT 'CPU';
ALTER TABLE vdi MODIFY memory varchar(200) NOT NULL COMMENT 'MEMORY';
ALTER TABLE vdi MODIFY version varchar(50) NOT NULL COMMENT 'VERSION';
ALTER TABLE vdi MODIFY start_date timestamp NULL  COMMENT '사용시작일';
ALTER TABLE vdi MODIFY end_date timestamp NULL  COMMENT '사용종료일';
ALTER TABLE vdi MODIFY ip varchar(20) NULL  COMMENT 'IP';
ALTER TABLE vdi MODIFY mac_address varchar(100) NULL COMMENT 'MAC ADDRESS';
ALTER TABLE vdi MODIFY memo varchar(1000) NULL COMMENT 'MEMO';
ALTER TABLE vdi MODIFY used boolean default true NOT NULL COMMENT '사용여부';
ALTER TABLE vdi MODIFY deleted boolean default false NOT NULL COMMENT '삭제여부';
ALTER TABLE vdi MODIFY created_user_key varchar(100) NOT NULL COMMENT '생성자';
ALTER TABLE vdi MODIFY modified_user_key varchar(100) NULL COMMENT '수정자';
ALTER TABLE vdi MODIFY created_date timestamp NOT NULL COMMENT '생성일';
ALTER TABLE vdi MODIFY modified_date timestamp NULL COMMENT '수정일';

alter table vdi add CONSTRAINT FK_vdi_createdUser FOREIGN KEY (created_user_key) REFERENCES users (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table vdi add CONSTRAINT FK_vdi_modifiedUser FOREIGN KEY (modified_user_key) REFERENCES users (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;

