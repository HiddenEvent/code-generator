
-- # Codes
insert into code values (1, 0,'SYSTEM', '소속', '', true);
insert into code values (2, 0,'SYSTEM', '직급', '', true);
insert into code values (3, 0,'SYSTEM', '직책', '', true);
insert into code values (4, 0,'SYSTEM', '소속', '', true);
insert into code values (5, 0,'SYSTEM', '소속', '', true);

insert into code values (11, 0,'SYSTEM', '이메일', '', true);
insert into code values (12, 0,'SYSTEM', '전화번호 앞자리', '', true);

insert into role values(1, 'ADMIN', '슈퍼관리자', true, 'ON', 'wjeopijeroijternbbzmqwdsaz', 'wjeopijeroijternbbzmqwdsaz', now(), now());
insert into xeno.role values(2, 'ADMIN', '시스템관리자', true, 'ON', 'wjeopijeroijternbbzmqwdsaz', 'wjeopijeroijternbbzmqwdsaz', now(), now());
insert into xeno.role values(3, 'ADMIN', '고객센터', true, 'ON', 'wjeopijeroijternbbzmqwdsaz', 'wjeopijeroijternbbzmqwdsaz', now(), now());
insert into xeno.role values(4, 'ADMIN', 'VDI관리자', true, 'ON', 'wjeopijeroijternbbzmqwdsaz', 'wjeopijeroijternbbzmqwdsaz', now(), now());
insert into xeno.role values(5, 'USER', '일반사용자', true, 'ON', 'wjeopijeroijternbbzmqwdsaz', 'wjeopijeroijternbbzmqwdsaz', now(), now());

-- # Menus(demo)
insert into xeno.menu values (1, 0, 'VDI 관리', 1, '/', true);
insert into xeno.menu values (2, 1, '내 VDI관리', 2, '/my-vdi', true);
insert into xeno.menu values (3, 1, 'VDI 관리', 2, '/vdis', true);
insert into xeno.menu values (4, 3, 'VDI 상세', 3, '/vdis/:id', true);
insert into xeno.menu values (5, 0, '사용자 관리', 1, '/users', true);
insert into xeno.menu values (6, 5, '사용자 관리', 2, '/users', true);
insert into xeno.menu values (7, 6, '사용자 상세', 3, '/users/:userKey', true);
insert into xeno.menu values (8, 6, '사용자 등록', 3, '/users/register', true);

-- # Role_menu
insert into xeno.role_menu values (1, 1, 1);
insert into xeno.role_menu values (2, 1, 2);
insert into xeno.role_menu values (3, 1, 3);
insert into xeno.role_menu values (4, 1, 4);
insert into xeno.role_menu values (5, 1, 5);
insert into xeno.role_menu values (6, 1, 6);
insert into xeno.role_menu values (7, 1, 7);
insert into xeno.role_menu values (8, 1, 8);
insert into xeno.role_menu values (9, 5, 1);
insert into xeno.role_menu values (10, 5, 2);
insert into xeno.role_menu values (11, 3, 5);
insert into xeno.role_menu values (12, 3, 6);
insert into xeno.role_menu values (13, 3, 7);
insert into xeno.role_menu values (14, 4, 5);
insert into xeno.role_menu values (15, 4, 6);
insert into xeno.role_menu values (16, 4, 5);


-- # Role_user
insert into xeno.role_user values (1, 1, '0201734e-be19-4322-b088-6f2d5c71cad0');
insert into xeno.role_user values (2, 5, 'sdflasjhdflksjdflas');
insert into xeno.role_user values (3, 3, 'b0bb02ae-f417-46b8-ad5b-d823758fc32c');


-- # users
insert into xeno.user_auth
values ( 2, 'sdflasjhdflksjdflas', null, null, null, null, null);

insert into xeno.user
values ( 'sdflasjhdflksjdflas'
       , 'kkadema'
       , 'USER'
       , '장찬우'
       , nullinsert into xeno.role_menu values (11, 3, 5);
insert into xeno.role_menu values (12, 3, 6);
insert into xeno.role_menu values (13, 3, 7);
       , null
       , null
       , null
       , null
       , null
       , null
       , null
       , true
       , false
       , 2
       , null
       , 0
       , false
       , now()
       , null
       );

insert into xeno.user_auth
values ( 1, 'wjeopijeroijternbbzmqwdsaz', null, null, null, null, null);

insert into xeno.user
values (
           'wjeopijeroijternbbzmqwdsaz'
       , 'xenosolution'
       , 'USER'
       , '제노솔루션'
       , null
       , null
       , null
       , null
       , null
       , null
       , null
       , null
       , true
       , false
       , 1
       , null
       , 0
       , false
       , now()
       , null
       );
