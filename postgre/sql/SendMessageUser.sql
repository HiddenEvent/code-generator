CREATE TABLE xeno.send_message_user (
    id serial NOT NULL ,
    send_message_id integer NOT NULL ,
    user_key VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

comment on table xeno.send_message_user is '알림수신자';
comment on column xeno.send_message_user.id is '알림수신자ID';
comment on column xeno.send_message_user.send_message_id is '알림ID';
comment on column xeno.send_message_user.user_key is '유저키';


alter table xeno.send_message_user add CONSTRAINT FK_SendMessageUser_sendMessage FOREIGN KEY (send_message_id) REFERENCES xeno.send_message (id) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table xeno.send_message_user add CONSTRAINT FK_SendMessageUser_user FOREIGN KEY (user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;

