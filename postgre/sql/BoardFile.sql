CREATE TABLE board_file (
    id serial NOT NULL,
    board_id integer NOT NULL,
    file_id integer NOT NULL,
    PRIMARY KEY (id)
);

comment on column board_file.id is '게시판-파일 매핑테이블 ID';
comment on column board_file.board_id is '게시판ID';
comment on column board_file.file_id is '파일ID';


alter table board_file add CONSTRAINT FK_BoardFile_board FOREIGN KEY (board_id) REFERENCES board (id) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table board_file add CONSTRAINT FK_BoardFile_file FOREIGN KEY (file_id)REFERENCES xeno.file (id) ON DELETE CASCADE ON UPDATE NO ACTION;
