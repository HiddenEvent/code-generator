CREATE TABLE board (
    id serial NOT NULL,
    type varchar(50) NOT NULL ,
    category varchar(100) NULL ,
    title varchar(500) NOT NULL ,
    content varchar(1000) NULL ,
    deleted boolean default false NOT NULL,
    created_user_key varchar(100) NOT NULL ,
    modified_user_key varchar(100) NULL ,
    created_date timestamp NOT NULL ,
    modified_date timestamp NULL ,
    PRIMARY KEY (id)
);


comment on table board is '게시판';
comment on column board.id is '게시판 일련번호';
comment on column board.type is '종류';
comment on column board.category is '카테고리';
comment on column board.title is '제목';
comment on column board.content is '내용';
comment on column board.deleted is '삭제여부';
comment on column board.created_user_key is '작성자';
comment on column board.modified_user_key is '수정자';
comment on column board.created_date is '작성일';
comment on column xeno.board.modified_date is '수정일';


alter table xeno.board add CONSTRAINT FK_Board_createdUser FOREIGN KEY (created_user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table xeno.board add CONSTRAINT FK_Board_modifiedUser FOREIGN KEY (modified_user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;

