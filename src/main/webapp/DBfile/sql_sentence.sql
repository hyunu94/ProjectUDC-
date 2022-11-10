
--모든 테이블 삭제 sql문  
--SELECT 'DROP TABLE "' || TABLE_NAME || '" CASCADE CONSTRAINTS;' FROM user_tables;

--테이블 컬럼 추가
ALTER TABLE board ADD starcount number;

commit;

--테이블 컬럼 제약조건 변경
ALTER TABLE board MODIFY starcount number DEFAULT 0;

commit;

--테이블 컬럼 데이터크기 변경
ALTER TABLE category MODIFY catename varchar2(50);

--테이블 컬럼 추가 및 제약조건 설정
alter table concert add regdate timestamp default sysdate;