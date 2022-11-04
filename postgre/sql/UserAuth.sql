CREATE TABLE xeno.user_auth (
    id serial NOT NULL ,
    user_key VARCHAR(100)  NOT NULL,
    password VARCHAR(200)  NULL,
    password_expired_date timestamp NULL,
    access_token VARCHAR(300)  NULL,
    refresh_access_token VARCHAR(300) NULL,
    otp VARCHAR(50) NULL,
    PRIMARY KEY (id)
);

CREATE UNIQUE INDEX UK_UserAuth_user ON xeno.user_auth (user_key);

comment on table xeno.user_auth is '유저-인증';
comment on column xeno.user_auth.id is '유저 인증 일련번호';
comment on column xeno.user_auth.user_key is  '유저키';
comment on column xeno.user_auth.password is  '비밀번호';
comment on column xeno.user_auth.password_expired_date is  '비밀번호-유효시간';
comment on column xeno.user_auth.access_token is '인증토큰';
comment on column xeno.user_auth.refresh_access_token is '갱신 인증토큰';
comment on column xeno.user_auth.otp is  'OTP';