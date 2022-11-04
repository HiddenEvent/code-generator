CREATE TABLE xeno.terms (
    id serial NOT NULL,
    name varchar(200) NOT NULL,
    content varchar(3000) NULL,
    version varchar(50) NULL,
    used boolean default false NOT NULL,
    user_required boolean default false NOT NULL,
    public_start_date timestamp NULL,
    public_end_date timestamp NULL,
    created_date timestamp NOT NULL,
    modified_date timestamp NULL,
    PRIMARY KEY (id)
);

comment on table xeno.terms is '약관';
comment on column xeno.terms.id is '약관 일련번호';
comment on column xeno.terms.name is  '약관명';
comment on column xeno.terms.content is '약관 내용';
comment on column xeno.terms.version is '약관 버젼';
comment on column xeno.terms.used is '사용 여부';
comment on column xeno.terms.user_required is '사용자 필수 여부';
comment on column xeno.terms.public_start_date is '게시 시작일';
comment on column xeno.terms.public_end_date is '게시 종료일';
comment on column xeno.terms.created_date is  '작성일';
comment on column xeno.terms.modified_date is  '수정일';
