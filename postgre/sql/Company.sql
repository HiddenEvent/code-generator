CREATE TABLE company (
    id serial NOT NULL,
    company_key VARCHAR(100)  NOT NULL,
    name VARCHAR(100) NULL,
    business_number VARCHAR(50) NULL,
    email VARCHAR(200)  NULL,
    status VARCHAR(50) NOT NULL,
    deleted boolean default false NOT NULL,
    PRIMARY KEY (id)
);

comment on table company is '회사';
comment on column company.id is '회사 ID';
comment on column company.company_key is  '회사키';
comment on column company.name is  '이름';
comment on column company.business_number is  '사업자등록번호';
comment on column company.email is  '이메일';
comment on column company.status is '계정 상태';
comment on column company.deleted is '탈퇴여부';




