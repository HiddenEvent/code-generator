CREATE TABLE xeno.setting (
    id serial NOT NULL,
    device varchar(50) NOT NULL ,
    waf boolean default false NOT NULL ,
    network boolean default false NOT NULL ,
    PRIMARY KEY (id)
);


-- comment on column xeno.setting.id is 'ID';
-- comment on column xeno.setting.device is 'device';
-- comment on column xeno.setting.waf is 'waf';
-- comment on column xeno.setting.network is 'network';



