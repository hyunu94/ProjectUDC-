select * from user_tables;

select * from kind;

--insert into kind
--values(kind_seq.nextval,'�Ǹ���');

--insert into kind
--values(kind_seq.nextval,'�Ϲ�ȸ��');

--insert into kind
--values(kind_seq.nextval,'��ȸ��');

--select * from category;

--insert into category
--values(category_seq.nextval,'�ı� �Խ���');

--insert into category
--values(category_seq.nextval,'���̰���Խ���');

--insert into category
--values(category_seq.nextval,'��� �Խ���');

select * from location;

commit;
--�帣 

--insert into genre
--values(genre_seq.nextval,'��');

--insert into genre
--values(genre_seq.nextval,'�߶��');

--insert into genre
--values(genre_seq.nextval,'K-POP');

--insert into genre
--values(genre_seq.nextval,'����');

--insert into genre
--values(genre_seq.nextval,'EDM');

--insert into genre
--values(genre_seq.nextval,'POP');

--�Ǹ��ڰ���(ȸ������)
--insert into member(memberNo,userid,pwd,name,nick,jumin,mobile,kindNo,locationNo)
--values(member_seq.nextval,'ezen','a1234','�輺��','������ī����','110123-3049280','02-304-3049',1,1);

--�Ϲ�ȸ������(ȸ������)
--insert into member(memberNo,userid,pwd,name,nick,jumin,mobile,kindNo,locationNo)
--values(member_seq.nextval,'idhong','1234','ȫ�浿','kildong','930123-1049480','010-3104-2949',2,3);

--��ȸ������(���� ��)
--insert into member(memberNo,name,mobile,kindNo)
--values(member_seq.nextval,'��ȸ��','010-3940-1010',3);

select * from member;
commit;

--��������( �����ڿ��̶� �ڹٿ��� kindNo == 1 �ϰ�쿡�� �����ϰ� �����ϱ�)
--insert into notice(noticeNo,title,content,memberNo)
--values(notice_seq.nextval,'���������Դϴ�.','���������� �ʿ��մϴ�',1);

--update notice
--set title = '���������������' , content = '�������׳������'
--where noticeNo = 6 and memberNo = 10;
--
--delete from notice
--where noticeNo = 7 and memberNo = 10;

--���� ��� ( �����ڿ��̶� �ڹٿ��� memberNo == 1 �ϰ�쿡�� �����ϰ� �����ϱ�)
--insert into concert
--values(concert_seq.nextval,'���ƾ�','���ƾ� �ܼ�Ʈ','�⼺���밡 �����Ҹ��� �ܼ�Ʈ',
--'2022-11-09','2022-12-01','13:50',100000,'www.youtube.com/nahuna',
--'nahuna.jpg','nahunade.jpg',1,20,3);

--update concert
--set artist = '��Ƽ��Ʈ' , title = 'Ÿ��Ʋ' , content = '����Ʈ' , 
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
--values(board_seq.nextval,'�ı�����','�ı⳻��','chum.jpg',11,3,3);
--
--update board
--set title = '�ٲ�����' , content = '�ٲﳻ��' , regdate = sysdate , img = 'ba.jpg' ,
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
--values(comments_seq.nextval,'��۳���',1,11);

--update comments
--set content = '��ۼ���'
--where commentsNo = 1;

--update comments
--set delcheck = 'Y'
--where commentsNo = 1;

select * from member;
select * from concert;
select * from location;
select * from category;
select * from board;








