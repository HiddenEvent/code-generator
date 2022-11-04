CREATE TABLE department (
    id serial NOT NULL,
    parent_id integer NULL,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(300) NULL,
    used boolean default true NOT NULL,
    created_date timestamp NOT NULL,
    modified_date timestamp NULL,
    PRIMARY KEY (id)
);

CREATE INDEX IX_Department_001 ON department (parent_id);

comment on column department.id is '부서ID';
comment on column department.parent_id is  '상위부서ID';
comment on column department.name is  '부서명';
comment on column department.description is  '부서설명';
comment on column department.used is  '사용여부';
comment on column department.created_date is  '작성일';
comment on column department.modified_date is  '수정일';



