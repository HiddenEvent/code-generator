CREATE TABLE users (
    user_key VARCHAR(100)  NOT NULL,
    login_id VARCHAR(100)  NOT NULL,
    type VARCHAR(50)  NOT NULL,
    name VARCHAR(100)  NULL,
    company_name VARCHAR(100) NULL,
    business_number VARCHAR(50) NULL,
    phone VARCHAR(20) NULL,
    email VARCHAR(200) NULL,
    role_id integer NULL ,
    department_id integer NULL ,
    position integer NULL ,
    duty integer NULL ,
    used boolean default true NOT NULL,
    deleted boolean default false NOT NULL,
    user_auth_id integer NOT NULL ,
    last_login timestamp NULL ,
    fail_count integer default 0 NULL ,
    password_initialized boolean default false NULL ,
    created_date timestamp NOT NULL,
    modified_date timestamp NULL,
    PRIMARY KEY (user_key)
);

CREATE UNIQUE INDEX UK_USER_001 ON users (login_id);

ALTER TABLE users COMMENT '사용자';
ALTER TABLE users MODIFY user_key VARCHAR(100)  NOT NULL COMMENT '유저키';
ALTER TABLE users MODIFY login_id VARCHAR(100)  NOT NULL COMMENT '로그인ID';
ALTER TABLE users MODIFY type VARCHAR(50)  NOT NULL COMMENT '유저타입';
ALTER TABLE users MODIFY name VARCHAR(100)  NULL COMMENT '이름';
ALTER TABLE users MODIFY company_name VARCHAR(100) NULL COMMENT '회사명';
ALTER TABLE users MODIFY business_number VARCHAR(50) NULL COMMENT '사업자번호';
ALTER TABLE users MODIFY phone VARCHAR(20) NULL COMMENT '핸드폰번호';
ALTER TABLE users MODIFY email VARCHAR(200) NULL COMMENT '이메일';
ALTER TABLE users MODIFY role_id integer NULL  COMMENT '권한';
ALTER TABLE users MODIFY department_id integer NULL  COMMENT '부서';
ALTER TABLE users MODIFY position integer NULL  COMMENT '직책';
ALTER TABLE users MODIFY duty integer NULL  COMMENT '직급';
ALTER TABLE users MODIFY used boolean default true NOT NULL COMMENT '사용여부';
ALTER TABLE users MODIFY deleted boolean default false NOT NULL COMMENT '삭제여부';
ALTER TABLE users MODIFY user_auth_id integer NOT NULL  COMMENT '유저인증 일련번호';
ALTER TABLE users MODIFY last_login timestamp NULL  COMMENT '마지막 접속시간';
ALTER TABLE users MODIFY fail_count integer default 0 NULL  COMMENT '로그인 실패수';
ALTER TABLE users MODIFY password_initialized boolean default false NULL  COMMENT '초기화여부';
ALTER TABLE users MODIFY created_date timestamp NOT NULL COMMENT '가입일';
ALTER TABLE users MODIFY modified_date timestamp NULL COMMENT '수정일';


alter table user add CONSTRAINT FK_User_role FOREIGN KEY (role_id) REFERENCES role (id) ON DELETE CASCADE ON UPDATE CASCADE;
alter table user add CONSTRAINT FK_User_department FOREIGN KEY (department_id) REFERENCES department (id) ON DELETE CASCADE ON UPDATE CASCADE;
alter table user add CONSTRAINT FK_User_userAuth FOREIGN KEY (user_auth_id) REFERENCES user_auth (id) ON DELETE CASCADE ON UPDATE CASCADE;