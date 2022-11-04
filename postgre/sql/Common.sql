-- table comment
comment on table user is '사용자';
comment on table user_auth is '사용자-인증';
comment on table user_terms is '사용자-약관';
comment on table vdi_request is 'VDI요청';
comment on table vdi_request_approval_user is 'VDI결재-유저';
comment on table vdi_user is 'VDI-유저';
comment on table vdi_user_logs is 'VDI-유저-로그';
comment on table terms is '약관';
comment on table setting is '세팅';
comment on table send_message is '알림';
comment on table xeno.send_message_user is '알림수신자';
comment on table xeno.role is '권한';
comment on table xeno.role_menu is '권한별메뉴';
comment on table xeno.role_user is '권한별사용자';
comment on table xeno.menu is '메뉴';
comment on table xeno.logs is '로그';
comment on table xeno.file is '파일';
comment on table xeno.event_log is '이벤트로그';
comment on table xeno.error_report is '장애신고';
comment on table xeno.department is '부서';
comment on table xeno.company_user is '회사-유저';
comment on table xeno.company is '회사';
comment on table xeno.code is '코드';
comment on table xeno.board_file is '게시판-파일';
comment on table xeno.board_comment is '게시판-답변';
comment on table xeno.board is '게시판';
comment on table xeno.approval is '결재';



-- FOREIGN KEY

alter table xeno.user add CONSTRAINT FK_user_role FOREIGN KEY (role_id) REFERENCES xeno.role (id) ON DELETE CASCADE ON UPDATE CASCADE;
alter table xeno.user add CONSTRAINT FK_user_department FOREIGN KEY (department_id) REFERENCES xeno.department (id) ON DELETE CASCADE ON UPDATE CASCADE;
alter table xeno.user add CONSTRAINT FK_user_userAuth FOREIGN KEY (user_auth_id) REFERENCES xeno.user_auth (id) ON DELETE CASCADE ON UPDATE CASCADE;

alter table xeno.user_terms add CONSTRAINT FK_users_terms_user FOREIGN KEY (user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table xeno.user_terms add CONSTRAINT FK_users_terms_terms FOREIGN KEY (terms_id) REFERENCES xeno.terms (id) ON DELETE CASCADE ON UPDATE NO ACTION;

alter table xeno.vdi_request add CONSTRAINT FK_vdi_request_vdi FOREIGN KEY (vdi_id) REFERENCES xeno.vdi (id) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table xeno.vdi_request add CONSTRAINT FK_vdi_request_createdUser FOREIGN KEY (created_user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;

alter table xeno.vdi_request_approval_user add CONSTRAINT FK_vdi_request_approval_user_vdiRequest FOREIGN KEY (vdi_request_id) REFERENCES xeno.vdi_request (id) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table xeno.vdi_request_approval_user add CONSTRAINT FK_vdi_request_approval_user_approval FOREIGN KEY (approval_id) REFERENCES xeno.approval (id) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table xeno.vdi_request_approval_user add CONSTRAINT FK_vdi_request_approval_user_approvalUser FOREIGN KEY (user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;

alter table xeno.send_message add CONSTRAINT FK_send_message_user FOREIGN KEY (send_user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;

alter table xeno.send_message_user add CONSTRAINT FK_send_message_user_sendMessage FOREIGN KEY (send_message_id) REFERENCES xeno.send_message (id) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table xeno.send_message_user add CONSTRAINT FK_send_message_user_user FOREIGN KEY (user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE xeno.role ADD CONSTRAINT FK_role_createdUser FOREIGN KEY (created_user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE xeno.role ADD CONSTRAINT FK_role_modifiedUser FOREIGN KEY (modified_user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE xeno.role_menu ADD CONSTRAINT FK_role_menu_role FOREIGN KEY (role_id) REFERENCES xeno.role (id) ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE xeno.role_menu ADD CONSTRAINT FK_role_menu_menu FOREIGN KEY (menu_id) REFERENCES xeno.menu (id) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE xeno.role_user ADD  CONSTRAINT FK_role_user_role FOREIGN KEY (role_id) REFERENCES xeno.role (id) ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE xeno.role_user ADD  CONSTRAINT FK_role_user_user FOREIGN KEY (user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE xeno.logs ADD CONSTRAINT FK_logs_code FOREIGN KEY (type_code_id) REFERENCES xeno.code (id) ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE xeno.logs ADD CONSTRAINT FK_logs_user FOREIGN KEY (user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;

alter table xeno.event_log add CONSTRAINT FK_event_log_event FOREIGN KEY (event_id) REFERENCES xeno.event (id) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table xeno.event_log add CONSTRAINT FK_event_log_company FOREIGN KEY (company_id) REFERENCES xeno.company (id) ON DELETE CASCADE ON UPDATE NO ACTION;

alter table xeno.error_report add CONSTRAINT fk_error_report_reportedUser FOREIGN KEY (reported_user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table xeno.error_report add CONSTRAINT fk_error_report_adminUser FOREIGN KEY (admin_user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;

alter table xeno.company_user add CONSTRAINT FK_company_user_company FOREIGN KEY (company_id) REFERENCES xeno.company (id) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table xeno.company_user add CONSTRAINT FK_company_user_user FOREIGN KEY (user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;

alter table xeno.comment add CONSTRAINT FK_comment_createdUser FOREIGN KEY (created_user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table xeno.comment add CONSTRAINT FK_comment_modifiedUser FOREIGN KEY (modified_user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;

alter table xeno.board_file add CONSTRAINT FK_board_file_board FOREIGN KEY (board_id) REFERENCES xeno.board (id) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table xeno.board_file add CONSTRAINT FK_board_file_file FOREIGN KEY (file_id)REFERENCES xeno.file (id) ON DELETE CASCADE ON UPDATE NO ACTION;

alter table xeno.board_comment add CONSTRAINT FK_board_comment_board FOREIGN KEY (board_id) REFERENCES xeno.board (id) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table xeno.board_comment add CONSTRAINT FK_board_comment_comment FOREIGN KEY (comment_id) REFERENCES xeno.comment (id) ON DELETE CASCADE ON UPDATE NO ACTION;

alter table xeno.board add CONSTRAINT FK_board_createdUser FOREIGN KEY (created_user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;
alter table xeno.board add CONSTRAINT FK_board_modifiedUser FOREIGN KEY (modified_user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;

alter table xeno.approval add CONSTRAINT FK_approval_createdUser FOREIGN KEY (created_user_key) REFERENCES xeno.user (user_key) ON DELETE CASCADE ON UPDATE NO ACTION;
