CREATE TABLE xeno.user_terms (
    id serial NOT NULL,
    user_key VARCHAR(100)  NOT NULL,
    terms_id integer NOT NULL,
    PRIMARY KEY (id)
);

comment on table xeno.user_terms is '유저-약관';
comment on column xeno.user_terms.id is '유저-약관 일련번호';
comment on column xeno.user_terms.user_key is '유저키';
comment on column xeno.user_terms.terms_id is '약관 일련번호';

alter table xeno.user_terms add CONSTRAINT FK_user_terms_user FOREIGN KEY (user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table xeno.user_terms add CONSTRAINT FK_user_terms_terms FOREIGN KEY (terms_id) REFERENCES xeno.terms (id) ON DELETE CASCADE ON UPDATE NO ACTION;