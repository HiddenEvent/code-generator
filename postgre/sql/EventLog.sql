CREATE TABLE xeno.event_log (
    id serial NOT NULL,
    event_id integer NOT NULL,
    company_id integer NOT NULL,
    log json NOT NULL,
    PRIMARY KEY (id)
);

comment on table xeno.event_log is '이벤트로그';
COMMENT ON COLUMN xeno.event_log.id IS '이벤트로그 일련번호';
COMMENT ON COLUMN xeno.event_log.event_id IS '이벤트 일련번호';
COMMENT ON COLUMN xeno.event_log.company_id IS '회사 일련번호';
COMMENT ON COLUMN xeno.event_log.log IS '로그 정보';



alter table xeno.event_log add CONSTRAINT FK_EventLog_event FOREIGN KEY (event_id) REFERENCES xeno.event (id) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table xeno.event_log add CONSTRAINT FK_EventLog_company FOREIGN KEY (company_id) REFERENCES xeno.company (id) ON DELETE CASCADE ON UPDATE NO ACTION;