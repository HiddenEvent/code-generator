CREATE TABLE board_comment (
    id serial NOT NULL,
    board_id integer NOT NULL,
    comment_id integer NOT NULL,
    PRIMARY KEY (id)
);

comment on table board_comment is '게시판-답변';
comment on column board_comment.id is '게시판-답변 매핑테이블 ID';
comment on column board_comment.board_id is '게시판ID';
comment on column board_comment.comment_id is '답변ID';


alter table board_comment add CONSTRAINT FK_BoardComment_board FOREIGN KEY (board_id) REFERENCES board (id) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table board_comment add CONSTRAINT FK_BoardComment_comment FOREIGN KEY (comment_id) REFERENCES xeno.comment (id) ON DELETE CASCADE ON UPDATE NO ACTION;