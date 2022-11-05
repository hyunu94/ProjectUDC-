/* 회원  */
CREATE TABLE member  (
	memberNo NUMBER PRIMARY KEY, /* 회원번호 */
	userid VARCHAR2(20) UNIQUE, /* 아이디 */
	pwd VARCHAR2(20), /* 비밀번호 */
	name VARCHAR2(20) NOT NULL, /* 이름 */
	nick VARCHAR2(20) UNIQUE, /* 닉네임 */
   	 jumin char(14) UNIQUE NOT NULL,  /* 주민등록번호 */
	mobile VARCHAR2(15) NOT NULL, /* 휴대폰 */
    	outdate char(1) default 'N', /* 탈퇴여부 */
	kindNo NUMBER CONSTRAINT FK_MEMBER_KIND  
                   REFERENCES KIND(kindNo) , /* 회원종류고유번호 */
	locationNo NUMBER CONSTRAINT FK_MEMBER_loca  
                   REFERENCES location(locationNo) /* 위치고유번호 */
);

create sequence member_seq
increment by 1
start with 1
nocache;

/* 회원종류  */
CREATE TABLE kind  (
	kindNo NUMBER primary key, /* 고유번호 */
	kindName VARCHAR2(20) UNIQUE NOT NULL /* 회원종류 */
);

create sequence kind_seq
increment by 1
start with 1
nocache;


/* 위치  */
CREATE TABLE location  (
	locationNo NUMBER primary key, /* 고유번호 */
	zipcode VARCHAR2(10) NOT NULL, /* 우편번호 */
	address VARCHAR2(100) NOT NULL, /* 주소 */
	addressdetail VARCHAR2(100), /* 상세주소 */
	axisx NUMBER, /* x좌표 */
	axisy NUMBER /* y좌표 */
);

create sequence location_seq
increment by 1
start with 1
nocache;
/* FAQ */
CREATE TABLE notice  (
	noticeNo NUMBER primary key, /* 고유번호 */
	title VARCHAR2(100) NOT NULL, /* 제목 */
	content CLOB, /* 내용 */
	regdate TIMESTAMP default sysdate, /* 작성일 */
	count NUMBER default 0, /* 조회수 */
	memberNo NUMBER CONSTRAINT FK_Notice_mem  
                   REFERENCES member(memberNo)/* 회원고유번호 */
);

create sequence notice_seq
increment by 1
start with 1
nocache;
/* 카테고리  */
CREATE TABLE category  (
	cateNo NUMBER primary key, /* 고유번호 */
	catename VARCHAR2(20) unique NOT NULL /* 카테고리명 */
);

create sequence category_seq
increment by 1
start with 1
nocache;

/* 공연  */
CREATE TABLE concert  (
	concertNo NUMBER primary key, /* 고유번호 */
	artist VARCHAR2(100) NOT NULL, /* 공연자 */
	title VARCHAR2(100) NOT NULL, /* 공연제목 */
	content CLOB NOT NULL, /* 공연소개 */
	startdate TIMESTAMP NOT NULL, /* 시작날짜 */
	enddate TIMESTAMP NOT NULL, /* 끝나는날짜 */
	time VARCHAR2(100) NOT NULL, /* 공연시간 */
    price number NOT NULL, /* 가격 */
	link VARCHAR2(1000), /* 링크 */
	thumbimg varchar2(100) NOT NULL, /* 썸네일 */
	detailimg varchar2(100) , /* 상세이미지 */
	memberNo NUMBER  CONSTRAINT FK_concert_mem  
                   REFERENCES member(memberNo), /* 회원번호 */
	locationNo NUMBER  CONSTRAINT FK_concert_loca  
                   REFERENCES location(locationNo) /* 위치고유번호 */
);

create sequence concert_seq
increment by 1
start with 1
nocache;

/* 게시판  */
CREATE TABLE board  (
	boardNo NUMBER primary key, /* 고유번호 */
	title VARCHAR2(100) NOT NULL, /* 제목 */
	content CLOB, /* 내용 */
	regdate TIMESTAMP default sysdate, /* 작성일 */
	star NUMBER default 0, /* 별점 */
	count NUMBER default 0, /* 조회수 */
    delcheck char(1) default 'N', /* 삭제여부 */
	memberNo NUMBER  CONSTRAINT FK_board_mem  
                   REFERENCES member(memberNo), /* 회원번호 */
	concertNo NUMBER  CONSTRAINT FK_board_con  
                   REFERENCES concert(concertNo), /* 공연고유번호 */
	categoryNo NUMBER  CONSTRAINT FK_board_cate  
                   REFERENCES category(cateNo)/* 카테고리고유번호 */
);

delete tablefrom board;
create sequence board_seq
increment by 1
start with 1
nocache;

/* 예매  */
CREATE TABLE reserve  (
	reserveNo NUMBER NOT NULL, /* 고유번호 */
	memberNo NUMBER  CONSTRAINT FK_reserve_mem  
                   REFERENCES member(memberNo), /* 회원번호 */
	concertNo NUMBER  CONSTRAINT FK_reserve_con  
                   REFERENCES concert(concertNo),/* 공연고유번호 */
    buy char(1) default 'N' /* 결제여부 */
);

create sequence reserve_seq
increment by 1
start with 1
nocache;

/* 댓글  */
CREATE TABLE comments  (
	commentsNo NUMBER NOT NULL, /* 댓글 고유번호 */
    content varchar2(2000) , /*댓글 내용*/
    regdate timestamp default sysdate, /*작성 날짜*/
    step number default 0, /*댓글의 단계*/
    sortno number default 0, /*댓글 정렬 순서*/
    delcheck char(1) default 'N', /*삭제 여부*/
	boardNo NUMBER  CONSTRAINT FK_comments_board  
                   REFERENCES board(boardNo) on delete cascade, /* 게시판번호 */
	memberNo NUMBER  CONSTRAINT FK_comments_mem  
                   REFERENCES member(memberNo) on delete cascade/* 작성자 회원번호 */
);

create sequence comments_seq
increment by 1
start with 1
nocache;

select * from user_tables;
select * from user_sequences;
