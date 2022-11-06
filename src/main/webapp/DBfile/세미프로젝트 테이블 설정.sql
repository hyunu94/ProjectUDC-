/* ȸ��  */
CREATE TABLE member  (
	memberNo NUMBER PRIMARY KEY, /* ȸ����ȣ */
	userid VARCHAR2(20) UNIQUE, /* ���̵� */
	pwd VARCHAR2(20), /* ��й�ȣ */
	name VARCHAR2(20) NOT NULL, /* �̸� */
	nick VARCHAR2(20) UNIQUE, /* �г��� */
   	 jumin varchar2(30) UNIQUE,  /* �ֹε�Ϲ�ȣ */
	mobile VARCHAR2(15) NOT NULL, /* �޴��� */
    	outdate char(1) default 'N', /* Ż�𿩺� */
	kindNo NUMBER CONSTRAINT FK_MEMBER_KIND  
                   REFERENCES KIND(kindNo) , /* ȸ������������ȣ */
	locationNo NUMBER CONSTRAINT FK_MEMBER_loca  
                   REFERENCES location(locationNo) /* ��ġ������ȣ */
);

create sequence member_seq
increment by 1
start with 1
nocache;

/* ȸ������  */
CREATE TABLE kind  (
	kindNo NUMBER primary key, /* ������ȣ */
	kindName VARCHAR2(20) UNIQUE NOT NULL /* ȸ������ */
);

create sequence kind_seq
increment by 1
start with 1
nocache;


/* ��ġ  */
CREATE TABLE location  (
	locationNo NUMBER primary key, /* ������ȣ */
	zipcode VARCHAR2(10) NOT NULL, /* �����ȣ */
	address VARCHAR2(100) NOT NULL, /* �ּ� */
	addressdetail VARCHAR2(100), /* ���ּ� */
	locationname varchar2(100), /* ����̸� */
	axisx NUMBER, /* x��ǥ */
	axisy NUMBER /* y��ǥ */
);

create sequence location_seq
increment by 1
start with 1
nocache;
/* FAQ */
CREATE TABLE notice  (
	noticeNo NUMBER primary key, /* ������ȣ */
	title VARCHAR2(100) NOT NULL, /* ���� */
	content CLOB, /* ���� */
	regdate TIMESTAMP default sysdate, /* �ۼ��� */
	count NUMBER default 0, /* ��ȸ�� */
	memberNo NUMBER CONSTRAINT FK_Notice_mem  
                   REFERENCES member(memberNo) on delete cascade /* ȸ��������ȣ */
);

create sequence notice_seq
increment by 1
start with 1
nocache;

/* ī�װ�  */
CREATE TABLE category  (
	cateNo NUMBER primary key, /* ������ȣ */
	catename VARCHAR2(20) unique NOT NULL /* ī�װ��� */
);

create sequence category_seq
increment by 1
start with 1
nocache;

/* ����  */
CREATE TABLE concert  (
	concertNo NUMBER primary key, /* ������ȣ */
	artist VARCHAR2(100) NOT NULL, /* ������ */
	title VARCHAR2(100) NOT NULL, /* �������� */
	content CLOB NOT NULL, /* �����Ұ� */
	startdate TIMESTAMP NOT NULL, /* ���۳�¥ */
	enddate TIMESTAMP NOT NULL, /* �����³�¥ */
	time VARCHAR2(100) NOT NULL, /* �����ð� */
    price number NOT NULL, /* ���� */
	link VARCHAR2(1000), /* ��ũ */
	thumbimg varchar2(100) NOT NULL, /* ����� */
	memberNo NUMBER  CONSTRAINT FK_concert_mem  
                   REFERENCES member(memberNo) ON DELETE CASCADE , /* ȸ����ȣ */
	locationNo NUMBER  CONSTRAINT FK_concert_loca  
                   REFERENCES location(locationNo) /* ��ġ������ȣ */
);

create sequence concert_seq
increment by 1
start with 1
nocache;

/* �Խ���  */
CREATE TABLE board  (
	boardNo NUMBER primary key, /* ������ȣ */
	title VARCHAR2(100) NOT NULL, /* ���� */
	content CLOB, /* ���� */
	regdate TIMESTAMP default sysdate, /* �ۼ��� */
	star NUMBER default 0, /* ���� */
	starcount Number default 0, /* ���� ������� Ƚ�� */
	count NUMBER default 0, /* ��ȸ�� */
	img varchar2(100) , /* �̹��� */
    	delcheck char(1) default 'N', /* �������� */
	memberNo NUMBER  CONSTRAINT FK_board_mem  
                   REFERENCES member(memberNo) on delete cascade, /* ȸ����ȣ */
	concertNo NUMBER  CONSTRAINT FK_board_con  
                   REFERENCES concert(concertNo) on delete cascade, /* ����������ȣ */
	categoryNo NUMBER  CONSTRAINT FK_board_cate  
                   REFERENCES category(cateNo)/* ī�װ�������ȣ */
);

delete tablefrom board;
create sequence board_seq
increment by 1
start with 1
nocache;

/* ����  */
CREATE TABLE reserve  (
	reserveNo NUMBER NOT NULL, /* ������ȣ */
	memberNo NUMBER  CONSTRAINT FK_reserve_mem  
                   REFERENCES member(memberNo) on delete cascade, /* ȸ����ȣ */
	concertNo NUMBER  CONSTRAINT FK_reserve_con  
                   REFERENCES concert(concertNo) on delete cascade,/* ����������ȣ */
    buy char(1) default 'N' /* �������� */
);

create sequence reserve_seq
increment by 1
start with 1
nocache;

/* ���  */
CREATE TABLE comments  (
	commentsNo NUMBER NOT NULL, /* ��� ������ȣ */
    content varchar2(2000) , /*��� ����*/
    regdate timestamp default sysdate, /*�ۼ� ��¥*/
    step number default 0, /*����� �ܰ�*/
    sortno number default 0, /*��� ���� ����*/
    delcheck char(1) default 'N', /*���� ����*/
	boardNo NUMBER  CONSTRAINT FK_comments_board  
                   REFERENCES board(boardNo) on delete cascade, /* �Խ��ǹ�ȣ */
	memberNo NUMBER  CONSTRAINT FK_comments_mem  
                   REFERENCES member(memberNo) on delete cascade/* �ۼ��� ȸ����ȣ */
);

create sequence comments_seq
increment by 1
start with 1
nocache;

select * from user_tables;
select * from user_sequences;
