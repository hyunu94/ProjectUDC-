 -- ���� ��ȸ ��
--create or replace view v_reserve 
--as
--select r.reserveNo , r.buy , m.memberNo , m.name, c.artist,c.title,
--c.startdate , c.enddate , c.time , l.locationname
--from reserve r join member m
--on r.memberNo = m.memberNo
--join concert c
--on r.concertNo = c.concertNo
--join location l
--on c.locationNo = l.locationNo;

--��ü�Խ��� ��
--create or replace view v_boardall 
--as
--select b.title , b.content , b.regdate , b.star , b.count , c.catename
--from board b join category c
--on b.categoryNo = c.cateNo
--where b.delcheck = 'N';
--
--select * from v_boardall;

--�Խ��Ǻ� ��
--create or replace view v_board_cate
--as
--select b.title , b.content , b.regdate , b.star , b.count , c.cateno , c.catename
--from board b join category c
--on b.categoryNo = c.cateNo
--where b.delcheck = 'N';

--�������� ����Ʈ ��
create or replace view v_list
as
select concertNo , artist , title , regdate , (select name from member m where m.memberNo = c.memberNo ) as name from concert c;

--���� ������ ��
create or replace view v_cDetailview
as
select c.concertNo , c.artist , c.title , c.content , c.startdate , c.time , c.price ,c.thumbimg, l.address , l.locationname, m.mobile
from concert c join member m
on c.memberNo = m.memberNo
join location l
on m.locationNo = l.locationNo;

-- ���� ��Ŀ  ��
create or replace view v_maker
as
select c.artist , c.startdate , l.locationname , l.axisx , l.axisy , c.thumbimg
from member m join location l 
on m.locationNo = l.locationNo
join concert c
on c.memberNo = m.memberNo;

-- ���� ������ �ֽ� ���� 4�� �ҷ�����

create or replace view v_index
as
select * from
(
    select c.artist , c.startdate , c.title , c.thumbimg , l.locationname 
from concert c join member m
on c.memberNo = m.memberNo
join location l
on m.locationNo = l.locationNo
order by c.regdate desc
)
where rownum <5;

-- nDetail search
create or replace view v_boardNo_select
as
select b.boardNo , b.title , b.content , b.cateNo , m.nick , c.catename
from board b join member m 
on b.memberNo = m.memberNo
join category c
on b.cateNo = c.cateNo;

