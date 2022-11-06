select * from user_tables;

select * from kind;

--insert into kind
--values(kind_seq.nextval,'판매자');

--insert into kind
--values(kind_seq.nextval,'일반회원');

--insert into kind
--values(kind_seq.nextval,'비회원');

--select * from category;

--insert into category
--values(category_seq.nextval,'후기 게시판');

--insert into category
--values(category_seq.nextval,'같이가요게시판');

--insert into category
--values(category_seq.nextval,'잡담 게시판');

select * from location;

commit;
--장르 

--insert into genre
--values(genre_seq.nextval,'락');

--insert into genre
--values(genre_seq.nextval,'발라드');

--insert into genre
--values(genre_seq.nextval,'K-POP');

--insert into genre
--values(genre_seq.nextval,'재즈');

--insert into genre
--values(genre_seq.nextval,'EDM');

--insert into genre
--values(genre_seq.nextval,'POP');

--판매자관점(회원가입)
--insert into member(memberNo,userid,pwd,name,nick,jumin,mobile,kindNo,locationNo)
--values(member_seq.nextval,'ezen','a1234','김성훈','이젠아카데미','110123-3049280','02-304-3049',1,1);

--일반회원관점(회원가입)
--insert into member(memberNo,userid,pwd,name,nick,jumin,mobile,kindNo,locationNo)
--values(member_seq.nextval,'idhong','1234','홍길동','kildong','930123-1049480','010-3104-2949',2,3);

--비회원관점(예약 시)
--insert into member(memberNo,name,mobile,kindNo)
--values(member_seq.nextval,'비회원','010-3940-1010',3);

select * from member;
commit;

--공지사항( 관리자용이라 자바에서 kindNo == 1 일경우에만 가능하게 설정하기)
--insert into notice(noticeNo,title,content,memberNo)
--values(notice_seq.nextval,'공지사항입니다.','공지사항은 필요합니다',1);

--update notice
--set title = '공지사항제목수정' , content = '공지사항내용수정'
--where noticeNo = 6 and memberNo = 10;
--
--delete from notice
--where noticeNo = 7 and memberNo = 10;

--공연 등록 ( 관리자용이라 자바에서 memberNo == 1 일경우에만 가능하게 설정하기)
--insert into concert
--values(concert_seq.nextval,'나훈아','나훈아 콘서트','기성세대가 좋아할만한 콘서트',
--'2022-11-09','2022-12-01','13:50',100000,'www.youtube.com/nahuna',
--'nahuna.jpg','nahunade.jpg',1,20,3);

--update concert
--set artist = '아티스트' , title = '타이틀' , content = '컨텐트' , 
--startdate = '2020-12-19' , enddate = '2020-12-19' , time = '13:50' , 
--price = 55000 , link = '' , thumbimg = 'imsi.jpg' , locationNo = 31550
--where concertNo = 4;
--
--delete from concert
--where concertNo = 4;

select * from genre;
select * from concert;
commit;

select * from board;

--insert into board(boardNo,title,content,img,memberNo,concertNo,categoryNo)
--values(board_seq.nextval,'후기제목','후기내용','chum.jpg',11,3,3);
--
--update board
--set title = '바뀐제목' , content = '바뀐내용' , regdate = sysdate , img = 'ba.jpg' ,
--concertNo = 5 , categoryNo = '2'
--where boardNo = 1;
--
--update board
--set Delcheck = 'Y'
--where boardNo = 1;

--update board
--set starcount = starcount + 1 , star = star + 4
--where boardNo = 11;
--    
--select star/starcount from board where boardNo = 11;

select * from reserve;

--insert into reserve(reserveNo , memberNo , concertNo)
--values(reserve_seq.nextval,11,3);

--update reserve
--set concertNo = 4
--where reserveNo = 1;
--
--delete from reserve
--where reserveNo = 1;

select * from comments;

--insert into comments(commentsNo,content,boardNo,MemberNo)
--values(comments_seq.nextval,'댓글내용',1,11);

--update comments
--set content = '댓글수정'
--where commentsNo = 1;

--update comments
--set delcheck = 'Y'
--where commentsNo = 1;

select * from member;
select * from concert;
select * from location;
select * from category;
select * from board;








