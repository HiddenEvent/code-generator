CREATE TABLE xeno.role_user (
    id serial NOT NULL,
    role_id integer NOT NULL ,
    user_key VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

comment on table xeno.role_user is '권한별사용자';
comment on column xeno.role_user.id is 'ID';
comment on column xeno.role_user.role_id is '권한ID';
comment on column xeno.role_user.user_key is '유저키';


ALTER TABLE xeno.role_user ADD  CONSTRAINT FK_role_user_role FOREIGN KEY (role_id) REFERENCES xeno.role (id) ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE xeno.role_user ADD  CONSTRAINT FK_role_user_user FOREIGN KEY (user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;
