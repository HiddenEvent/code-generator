CREATE TABLE company_user (
    id serial NOT NULL,
    company_id integer NOT NULL,
    user_key VARCHAR(100) NOT NULL,
    grade VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);

comment on table company_user is '회사-유저';
comment on column company_user.id is  '회사-유저 매핑 테이블 ID';
comment on column company_user.company_id is  '회사ID';
comment on column company_user.user_key is  '유저키';
comment on column company_user.grade is  '등급';

alter table company_user add CONSTRAINT FK_CompanyUser_company FOREIGN KEY (company_id) REFERENCES company (id) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table xeno.company_user add CONSTRAINT FK_CompanyUser_user FOREIGN KEY (user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;

