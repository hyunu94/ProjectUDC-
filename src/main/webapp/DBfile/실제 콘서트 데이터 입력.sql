select * from concert;
select * from kind;
select * from location order by locationno desc;
select * from type;
select * from kind;
select * from type;
select * from reserve;
select * from board;

insert into location(locationno, zipcode, address, addressdetail,axisx,axisy)
values(70000,'1651','서울시 마포구','상세주소',12.2516,15.5641);

select * from member;
commit;
desc concert;
desc location;

--------------------------------

insert into concert(concertno, artist, title, content, startdate, time, price, link, thumbimg, memberno,locationno)
values(concert_seq.nextval,'크라잉넛',' 크라잉넛 콘서트','크라잉넛 콘서트!',
'2022-12-17','17:30',88000,'www.youtube.com','cryingnut.jpg',2,3);
-- 왓챠홀 서울 마포구 잔다리로 32 (락)
-----------------------------------------------------------------
insert into concert(concertno, artist, title, content, startdate, time, price, link, thumbimg, memberno,locationno)
values(concert_seq.nextval,'이승환','2022 이승환밴드 떼창의 민족','이승환밴드 올해 마지막 콘서트!!',
'2022-11-13','17:00',99000,'https://www.youtube.com/watch?v=Danydj-PZu8',
'seunghwan.gif',1,2);
--  메세나폴리스, 서울 마포구 양화로 45 (서교동 490)  (락)

insert into concert(concertno, artist, title, content, startdate, time, price, link, thumbimg, memberno,locationno)
values(concert_seq.nextval,'김경호',' 김경호 락크리스마스 콘서트','락의 전설 김경호의 락크리스마스 콘서트',
'2022-12-24','19:30',110000,'https://www.youtube.com/watch?v=N2Qude1lSKA',
'kyungho.gif',3,4);
-- 건국대학교 새천년관 대공연장, 서울시 광진구 화양동1번지 건국대학교 새천년관 (락)

insert into concert(concertno, artist, title, content, startdate, time, price, link, thumbimg, memberno,locationno)
values(concert_seq.nextval,'정영애','정영애 재즈 콘서트','[겨울의낭만재즈］재즈 보컬리스트 정영애',
'2022-12-04','17:00',50000,'https://www.youtube.com/watch?v=m7xvOV5mcV4',
'jungYoungae.gif',4,5);
-- 국립극장 하늘극장, 서울특별시 중구 장충단로 59(장충동 2가, 국립극장) (재즈)

insert into concert(concertno, artist, title, content, startdate, time, price, link, thumbimg, memberno,locationno)
values(concert_seq.nextval,'임영웅','2022 임영웅 콘서트 [IM HERO] 앵콜 - 서울','인기에 힘입어 다시 돌아온 우리의 영웅 임영웅콘서트!',
'2022-12-10','17:00',132000,'https://www.youtube.com/watch?v=Mpc-Xotx8iw',
'young-woong.jpg',5,6);
-- 고척스카이돔  서울특별시 구로구 경인로 430 (트로트)

insert into concert(concertno, artist, title, content, startdate, time, price, link, thumbimg, memberno,locationno)
values(concert_seq.nextval,'마마무','MAMAMOO WORLD TOUR 〈MY CON〉－SEOUL','K-POP의 명실상부 독보적인 ICON으로 자리한 마마무 
서울 공연을 시작으로 월드 투어의 화려한 서막을 올린다',
'2022-11-18','18:00',121000,'https://www.youtube.com/watch?v=1e03nbvYvzI',
'mamamo.jpg',6,7);
-- 올림픽공원 올림픽홀  서울 송파구 방이동 88 (kpop)

insert into concert(concertno, artist, title, content, startdate, time, price, link, thumbimg, memberno,locationno)
values(concert_seq.nextval,'케이시','케이시콘서트','보컬리스트 케이시의 콘서트에 여러분을 초대합니다.',
'2022-12-03','18:00',110000,'https://www.youtube.com/watch?v=3O43Yjp-bXw',
'kassy.jpg',7,8);
-- 동덕여대 백주년기념관 서울 성북구 하월곡동 산 2-57 (발라드) 

insert into concert(concertno, artist, title, content, startdate, time, price, link, thumbimg, memberno,locationno)
values(concert_seq.nextval,'전자양','전자양 단독 콘서트 ',
'우리는 언제나 엄청나게 멋진 공연',
'2022-12-03','18:00',66000,'https://www.youtube.com/watch?v=myVxrTjgRNs',
'jayang.jpg',8,9);
-- 롤링홀 서울 마포구 서교동 402-22 (락)

insert into concert(concertno, artist, title, content, startdate, time, price, link, thumbimg, memberno,locationno)
values(concert_seq.nextval,'노을','[서울] 노을 20주년 전국투어 콘서트〈스물〉',
'노을 20주년 전국투어 콘서트 <스물>에서 함께해요,우리...',
'2022-12-24','18:00',121000,'https://www.youtube.com/watch?v=FhjAaiINXrY',
'noel.jpg',9,10);
-- 연세대학교 대강당 서울 서대문구 신촌동 134 신촌동 134 (발라드)

insert into concert(concertno, artist, title, content, startdate, time, price, link, thumbimg, memberno,locationno)
values(concert_seq.nextval,'영탁','2022 영탁 단독 콘서트 “TAK SHOW” - 앵콜','다시 돌아온 영탁의 단독 콘서트!',
'2022-11-18','15:00',132000,'https://www.youtube.com/watch?v=X4u83QlRtrI',
'youngTak.gif',10,11);
-- 서울특별시 송파구 올림픽로 424 (방이동 88-2) 올림픽공원 (트로트)

insert into concert(concertno, artist, title, content, startdate, time, price, link, thumbimg, memberno,locationno)
values(concert_seq.nextval,'멜로망스','2022 멜로망스 전국투어 콘서트 〈Festival〉','올겨울 가장 따뜻하고 아름다운 축제로 당신을 초대합니다',
'2022-12-09','18:00',121000,'https://www.youtube.com/watch?v=eMCbEW2lh94',
'melmang.jpg',11,11);
-- 서울특별시 송파구 올림픽로 424 올림픽홀

insert into concert(concertno, artist, title, content, startdate, time, price, link, thumbimg, memberno,locationno)
values(concert_seq.nextval,'조용필','2022 조용필＆위대한 탄생 콘서트','4년만에 돌아온 가왕 조용필무대에 여러분을 초대합니다.',
'2022-11-26','18:00',143000,'https://www.youtube.com/watch?v=fASCCrRpaY0',
'jyp.jpg',13,14);
-- 올림픽곤원 체조경기장 서울시 송파구 올림픽로 424/방이동 88-2

insert into concert(concertno, artist, title, content, startdate, time, price, link, thumbimg, memberno,locationno)
values(concert_seq.nextval,'백지영','2022 백지영 전국투어 콘서트〈GO BAEK〉-서울',
'저마다의 감정이 담긴 여러분의 고백에 백지영의 음악을 더해 새로운 고백을 선물하겠습니다',
'2022-12-18','17:00',132000,'https://www.youtube.com/watch?v=Tquqb7MVk9E',
'baekzyoung.jpg',14,15);
-- 코엑스 d홀 서울강남구 영동대로 513 

insert into concert(concertno, artist, title, content, startdate, time, price, link, thumbimg, memberno,locationno)
values(concert_seq.nextval,'공연자명','공연제목','공연소개',
'시작날짜','종료날짜','공연시각',88000,'https://www.youtube.com/watch?v=P4UCyciB8aw',
'cryingnut.jpg',10,31760);
-- 왓챠홀 서울 마포구 잔다리로 32 (락)






















