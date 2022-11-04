CREATE TABLE xeno.send_message (
    id serial NOT NULL ,
    type varchar(50) NOT NULL ,
    receive_type varchar(50) NOT NULL ,
    send_user_key varchar(100) NOT NULL ,
    content varchar(1000) NULL ,
    status VARCHAR(50) NOT NULL,
    created_date timestamp NOT NULL,
    PRIMARY KEY (id)
);

comment on table xeno.send_message is '알림';
comment on column xeno.send_message.id is '알림일련번호';
comment on column xeno.send_message.type is '발송종류';
comment on column xeno.send_message.receive_type is '수신자-구분';
comment on column xeno.send_message.send_user_key is '발신자';
comment on column xeno.send_message.content is '내용';
comment on column xeno.send_message.status is '상태';
comment on column xeno.send_message.created_date is '작성일자';

alter table xeno.send_message add CONSTRAINT FK_send_message_user FOREIGN KEY (send_user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;




