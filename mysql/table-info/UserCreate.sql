-- mysql 8버전
-- 초기 아이디 세팅
create user 'richardkim'@'%' identified by '비밀번호' ;
GRANT ALL PRIVILEGES ON public.* TO 'richardkim'@'%' WITH GRANT OPTION;