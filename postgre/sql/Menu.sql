CREATE TABLE xeno.menu (
    id serial NOT NULL,
    parent_id integer NULL ,
    name varchar(100) NOT NULL ,
    depth integer default 1 NOT NULL ,
    url varchar(200) NULL ,
    used boolean default false NOT NULL,
    PRIMARY KEY (id)
);

comment on table xeno.menu is '메뉴';
comment on column xeno.menu.id is 'ID';
comment on column xeno.menu.parent_id is '상위ID';
comment on column xeno.menu.name is '이름';
comment on column xeno.menu.depth is 'Depth';
comment on column xeno.menu.url is 'URL';
comment on column xeno.menu.used is '사용여부';



