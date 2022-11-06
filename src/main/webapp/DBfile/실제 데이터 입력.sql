--크라잉넛 콘서트--

select locationNo from location
where address = '서울특별시 마포구 서교동' and addressdetail like '366-1~368-40';

update location
set axisx = 37.5515788223247 , axisy = 126.919828408783
where locationNo = 31760;

update location
set name = '왓차홀'
where locationNo = 31760;

insert into member(memberNo,userid,pwd,name,nick,jumin,mobile,kindNo,locationNo)
values(member_seq.nextval,'crying','a1234','홍길동','음악 회사','101-4123-3049-80','02-304-3049',1,1);

select * from member;
select * from concert;

insert into concert
values(concert_seq.nextval,'크라잉넛',' 크라잉넛 콘서트[연말 우주로]','일년에 한번하는 크라잉넛 콘서트!',
'2022-12-17','2022-12-17','17:30',88000,'https://www.youtube.com/watch?v=P4UCyciB8aw',
'cryingnut.jpg',10,31760);

select * from member;
select * from board;

--일반회원 회원가입
insert into member(memberNo,userid,pwd,name,nick,jumin,mobile,kindNo,locationNo)
values(member_seq.nextval,'아이디1','a34245','일반회원','normal','941023-2039401',
'010-2039-4059',2,2);

--비회원 예매시 회원테이블에 저장
insert into member(memberNo,name,mobile,kindNo)
values(member_seq.nextval,'비회원','010-0203-0400',3);

commit;

--create or replace view v_reserve //예매 조회 뷰
--as
--select r.reserveNo , r.buy , m.memberNo , m.name, c.artist,c.title,c.content, 
--c.startdate , c.enddate , c.time , l.address , l.addressDetail, l.name as "장소이름"
--from reserve r join member m
--on r.memberNo = m.memberNo
--join concert c
--on r.concertNo = c.concertNo
--join location l
--on c.locationNo = l.locationNo;














