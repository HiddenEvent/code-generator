CREATE TABLE xeno.role (
    id serial NOT NULL,
    type varchar(50) NOT NULL ,
    name varchar(100) NOT NULL ,
    system_used boolean default false NOT NULL ,
    status varchar(50) NOT NULL ,
    created_user_key varchar(100) NOT NULL,
    modified_user_key varchar(100) NULL,
    created_date timestamp NOT NULL,
    modified_date timestamp NULL,
    PRIMARY KEY (id)
);


comment on table xeno.role is '권한';
comment on column xeno.role.id is 'ID';
comment on column xeno.role.type is '종류';
comment on column xeno.role.name is '이름';
comment on column xeno.role.system_used is '사용여부';
comment on column xeno.role.status is '상태';
comment on column xeno.role.created_user_key is '생성자';
comment on column xeno.role.modified_user_key is '수정자';
comment on column xeno.role.created_date is '생성일';
comment on column xeno.role.modified_date is '수정일';


ALTER TABLE xeno.role ADD CONSTRAINT FK_role_createdUser FOREIGN KEY (created_user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE xeno.role ADD CONSTRAINT FK_role_modifiedUser FOREIGN KEY (modified_user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;


insert into role values(1, 'SUPER', '슈퍼관리자', true, 'ON', );
insert into role values(1, 'SYSTEM', '시스템관리자', true, 'ON', );
insert into role values(1, 'CUSTOMER', '고객센터', true, 'ON', );
insert into role values(1, 'VDI', 'VDI관리자', true, 'ON', );
insert into role values(1, 'BASIC', '일반관리자', true, 'ON', );