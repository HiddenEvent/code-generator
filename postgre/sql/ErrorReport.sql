CREATE TABLE error_report (
    id serial NOT NULL,
    vdi_id integer NOT NULL,
    title varchar(500) NOT NULL ,
    type varchar(50) NOT NULL ,
    reported_user_key varchar(100) NULL ,
    reported_date timestamp NOT NULL ,
    admin_user_key varchar(100) NULL ,
    completed_date timestamp NULL ,
    status varchar(50) NOT NULL,
    content varchar(1000) NULL ,
    deleted boolean default false NOT NULL,
    PRIMARY KEY (id)
);


comment on column error_report.id is '장애신고-일련번호';
comment on column error_report.vdi_id is '장애VDI-ID';
comment on column error_report.title is '제목';
comment on column error_report.type is '장애유형';
comment on column error_report.reported_user_key is '신고자';
comment on column error_report.reported_date is '신고일';
comment on column error_report.admin_user_key is '담당자';
comment on column error_report.completed_date is '처리일자';
comment on column error_report.status is '처리상태';
comment on column error_report.content is '처리내용';
comment on column xeno.error_report.deleted is '삭제여부';



alter table xeno.error_report add CONSTRAINT FK_ErrorReport_reportedUser FOREIGN KEY (reported_user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table xeno.error_report add CONSTRAINT FK_ErrorReport_adminUser FOREIGN KEY (admin_user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;





