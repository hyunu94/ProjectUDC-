--ũ���׳� �ܼ�Ʈ--

select locationNo from location
where address = '����Ư���� ������ ������' and addressdetail like '366-1~368-40';

update location
set axisx = 37.5515788223247 , axisy = 126.919828408783
where locationNo = 31760;

update location
set name = '����Ȧ'
where locationNo = 31760;

insert into member(memberNo,userid,pwd,name,nick,jumin,mobile,kindNo,locationNo)
values(member_seq.nextval,'crying','a1234','ȫ�浿','���� ȸ��','101-4123-3049-80','02-304-3049',1,1);

select * from member;
select * from concert;

insert into concert
values(concert_seq.nextval,'ũ���׳�',' ũ���׳� �ܼ�Ʈ[���� ���ַ�]','�ϳ⿡ �ѹ��ϴ� ũ���׳� �ܼ�Ʈ!',
'2022-12-17','2022-12-17','17:30',88000,'https://www.youtube.com/watch?v=P4UCyciB8aw',
'cryingnut.jpg',10,31760);

select * from member;
select * from board;

--�Ϲ�ȸ�� ȸ������
insert into member(memberNo,userid,pwd,name,nick,jumin,mobile,kindNo,locationNo)
values(member_seq.nextval,'���̵�1','a34245','�Ϲ�ȸ��','normal','941023-2039401',
'010-2039-4059',2,2);

--��ȸ�� ���Ž� ȸ�����̺� ����
insert into member(memberNo,name,mobile,kindNo)
values(member_seq.nextval,'��ȸ��','010-0203-0400',3);

commit;

--create or replace view v_reserve //���� ��ȸ ��
--as
--select r.reserveNo , r.buy , m.memberNo , m.name, c.artist,c.title,c.content, 
--c.startdate , c.enddate , c.time , l.address , l.addressDetail, l.name as "����̸�"
--from reserve r join member m
--on r.memberNo = m.memberNo
--join concert c
--on r.concertNo = c.concertNo
--join location l
--on c.locationNo = l.locationNo;














