select * from board;
select * from category order by cateNo;
select * from member;
select * from concert;

commit;

--후기 게시판
insert into board(boardNo,title,content,img,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'너무 재미있었어요!','올해 가장 재미있는 콘서트였습니다~','like.jpg',
?,?,1);

insert into board(boardNo,title,content,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'으엑 별로였어요..','으엑 다신 안볼꺼야',?,?,1);

insert into board(boardNo,title,content,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'그냥 그랬어요~','뭔가 또 보진않을거같지만 나쁘진 않았습니다~',?,?,1);

insert into board(boardNo,title,content,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'재밌었어요!','재밌었습니다~~',?,?,1);

insert into board(boardNo,title,content,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'무조건 추천하고 싶은 콘서트입니다!','무조건 보세요 후회안합니당~~~~~',?,?,1);

insert into board(boardNo,title,content,img,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'처음으로 여자친구랑 콘서트와봤습니당','재밌었어요!! 다음에 또 올게요ㅎ','imsi.jpg',
?,?,1);

insert into board(boardNo,title,content,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'생각보다 시설이 별로였어요..','콘서트는 재밌었는데 시설이 별로여서 아쉬웠습니다..',
?,?,1);

insert into board(boardNo,title,content,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'다음에 또올게요!','재밌었습니다~~',
?,?,1);

insert into board(boardNo,title,content,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'크라잉넛 최고~','역시 기대를 저버리지 않네요~',
?,?,1);

insert into board(boardNo,title,content,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'처음들어보는 가수인데 온 보람이 있네요','다음에 또 오겠습니다 잘봤어요!~',
?,?,1);

insert into board(boardNo,title,content,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'아쉽네요','곡 선정이 아쉬웠습니다..',
?,?,1);

--같이가요 게시판
insert into board(boardNo,title,content,img,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'같이 가실분 있으신가요~!','같이 가여ㅠ',?,
?,?,2);

insert into board(boardNo,title,content,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'30대 남자랑 같이 가실분~~','같이 가실분 ㅠㅠ',?,?,2);

insert into board(boardNo,title,content,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'20대 여자랑 같이 가실분~~','같이 가실분 구해요~',?,?,2);

insert into board(boardNo,title,content,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'커플이랑 같이 가실분~~','같이 가실 커플 구해여~',?,?,2);

insert into board(boardNo,title,content,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'10대 여자랑 같이 가실분~~','같이 가실분 구해요~',?,?,2);

insert into board(boardNo,title,content,img,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'같이 가실분~~~~~~','혼자 가기 싫은데 ㅠㅠ',?,
?,?,2);

insert into board(boardNo,title,content,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'10대 남자랑 같이 가실분~~','같이 가실분 구해요',?,?,2);

insert into board(boardNo,title,content,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'10대 남자들이랑 같이 가실분~~','같이 가실분 구해요!! 친화력 좋습니당',?,?,2);

--잡담 게시판

insert into board(boardNo,title,content,img,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'혹시 멜로망스 콘서트 언제 여는지 아시는분~~~~~~',
'이번년도에 멜로망스 콘서트 언제 열리는지 아시는분 있으실까요?!','help.jpg',
?,?,3);

insert into board(boardNo,title,content,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'소소하게 얘기하실분~~~','심심해여..',?,?,3);

insert into board(boardNo,title,content,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'혹시 당근마켓 하시는분 있나여..?','요즘 당근마켓 사기 별로 없나요?!',?,?,3);

insert into board(boardNo,title,content,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'주변에 개발자 하는 사람 있으신분?!','개발자 중에 자바 하시는분 있으신가요?! 한번 배워볼까 하는데 얼마나 어려운지 알고싶어서요',?,?,3);

insert into board(boardNo,title,content,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'자바 개발자 있으신가요??!','github 란걸 이번에 새로 공부해볼까 하는데 어떤 사이트에서 보면 좋을까여ㅠㅠ',?,?,3);

insert into board(boardNo,title,content,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'~~~','',?,?,3);

insert into board(boardNo,title,content,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'~','심심하다..',?,?,3);

insert into board(boardNo,title,content,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'휴','이거 언제다쓰지',?,?,3);

insert into board(boardNo,title,content,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'오늘날짜는','2022년 11월 7일!',?,?,3);

insert into board(boardNo,title,content,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'오늘은','몇시까지 공부할까여..',?,?,3);

insert into board(boardNo,title,content,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'같이 겜하실분~','게임하고싶다..',?,?,3);

insert into board(boardNo,title,content,memberNo,concertNo,categroyNo)
values(board_seq.nextval,'베트남 가보신분 있나요?!','베트남 언제 가보나...',?,?,3);

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
