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

comment on table users is '사용자';
comment on column users.user_key is  '유저키';
comment on column users.login_id is '로그인ID';
comment on column users.type is '유저타입';
comment on column users.name is  '이름';
comment on column users.company_name is  '회사명';
comment on column users.business_number is  '사업자번호';
comment on column users.phone is '핸드폰번호';
comment on column users.email is  '이메일';
comment on column users.role_id is  '권한';
comment on column users.department_id is  '부서';
comment on column users.position is '직책';
comment on column users.duty is  '직급';
comment on column users.used is '사용여부';
comment on column users.deleted is '삭제여부';
comment on column users.user_auth_id is  '유저인증 일련번호';
comment on column users.last_login is  '마지막 접속시간';
comment on column users.fail_count is  '로그인 실패수';
comment on column users.password_initialized is  '초기화여부';
comment on column users.created_date is  '가입일';
comment on column users.modified_date is  '수정일';


alter table user add CONSTRAINT FK_User_role FOREIGN KEY (role_id) REFERENCES role (id) ON DELETE CASCADE ON UPDATE CASCADE;
alter table user add CONSTRAINT FK_User_department FOREIGN KEY (department_id) REFERENCES department (id) ON DELETE CASCADE ON UPDATE CASCADE;
alter table user add CONSTRAINT FK_User_userAuth FOREIGN KEY (user_auth_id) REFERENCES user_auth (id) ON DELETE CASCADE ON UPDATE CASCADE;