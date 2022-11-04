CREATE TABLE comment (
    id serial NOT NULL,
    title varchar(500) NULL ,
    content varchar(1000) NULL,
    deleted boolean default false NOT NULL,
    created_user_key varchar(100) NOT NULL,
    modified_user_key varchar(100) NULL,
    created_date timestamp NOT NULL,
    modified_date timestamp NULL,
    PRIMARY KEY (id)
);

comment on table comment is '댓글';
comment on column comment.id is '댓글 일련번호';
comment on column comment.title is  '제목';
comment on column comment.content is  '내용';
comment on column comment.deleted is '삭제여부';
comment on column comment.created_user_key is  '작성자';
comment on column comment.modified_user_key is  '수정자';
comment on column comment.created_date is  '작성일';
comment on column comment.modified_date is  '수정일';


alter table comment add CONSTRAINT FK_comment_createdUser FOREIGN KEY (created_user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table xeno.comment add CONSTRAINT FK_comment_modifiedUser FOREIGN KEY (modified_user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;



