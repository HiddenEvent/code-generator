CREATE TABLE xeno.role_menu (
    id serial NOT NULL,
    role_id integer NOT NULL ,
    menu_id integer NOT NULL ,
    PRIMARY KEY (id)
);

comment on table xeno.role_menu is '권한별메뉴';
comment on column xeno.role_menu.id is 'ID';
comment on column xeno.role_menu.role_id is '권한ID';
comment on column xeno.role_menu.menu_id is '메뉴ID';


ALTER TABLE xeno.role_menu ADD CONSTRAINT FK_role_menu_role FOREIGN KEY (role_id) REFERENCES xeno.role (id) ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE xeno.role_menu ADD CONSTRAINT FK_role_menu_menu FOREIGN KEY (menu_id) REFERENCES xeno.menu (id) ON DELETE CASCADE ON UPDATE NO ACTION;