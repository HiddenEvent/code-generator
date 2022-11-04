CREATE TABLE xeno.logs (
    id serial NOT NULL ,
    type varchar(50) NOT NULL ,
    type_code_id integer NULL ,
    user_key VARCHAR(100) NOT NULL,
    status varchar(50) NOT NULL ,
    extra_info json NULL,
    created_date timestamp NOT NULL,
    PRIMARY KEY (id)
);

comment on table xeno.logs is '로그';
comment on column xeno.logs.id is '로그 일련번호';
comment on column xeno.logs.type is  '로그종류';
comment on column xeno.logs.type_code_id is  '이벤트종류';
comment on column xeno.logs.user_key is  '사용자';
comment on column xeno.logs.status is  '상태';
comment on column xeno.logs.extra_info is  'ExtraInfo';
comment on column xeno.logs.created_date is  '생성일';

ALTER TABLE xeno.logs ADD CONSTRAINT FK_Logs_code FOREIGN KEY (type_code_id) REFERENCES xeno.code (id) ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE xeno.logs ADD CONSTRAINT FK_Logs_user FOREIGN KEY (user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;