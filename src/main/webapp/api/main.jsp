<%@page import="java.util.ArrayList"%>
<%@page import="com.project.v_maker.model.MakerViewVO"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="makerViewService" class="com.project.v_maker.model.MakerViewService"></jsp:useBean>
<jsp:useBean id="makerViewVO" class="com.project.v_maker.model.MakerViewVO"></jsp:useBean>
<%

		List<MakerViewVO> list = new ArrayList<>();
	try{
		list = makerViewService.selectAll();	
		
	}catch(SQLException e){
		e.printStackTrace();
	}
	
	//확인용
	/*  makerViewVO = list.get(6); */ 

	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>UDC</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
	*{
		font-family: 'Noto Sans KR', sans-serif; 
	}
	#getMyPositionBtn{
		position: absolute;
		right: 10px;
		bottom: 10px;
		z-index: 10;
		width: 30px;
		border: 1px solid #cccccc;
		background-color: white;
		padding: 5px;
		border-radius:5px 5px 5px 5px;
	}
	#getMyPositionBtn:hover {background-color: }
	
	#getMyPositionBtn:active {
	  background-color: ;
	  transform: translateY(2px);
	}
	#borough{
		position: absolute;
		left: 20px;
		top: 20px;
		z-index: 11;
		margin: 0;
		width: 100px;
		height: 25px;
		border: 1px solid #9d9d9d;
		border-radius:5px 5px 5px 5px;
		font-size: 10pt;
	}
	#search{
		position: absolute;
		left: 125px;
		top: 20px;
		z-index: 11;
		margin: 0;
		height: 25px;
		border: 1px solid #9d9d9d;
		border-radius:5px 5px 5px 5px;
		font-size: 10pt;
	}
	#search:active {
	  background-color: ;
	  transform: translateY(2px);
	}
	.divSearch{
		background-color: black;
	}
	
	/* 마커인포 */
	.div_map *{
		margin: 0px;
		padding: 0px;
		font-family: 'Noto Sans KR', sans-serif;
		font-size:10pt;
		font-weight: 300;
	}
	.div_map{
		display: block;
		width: 335px;
		height:290px; 
		border:2px solid #c0c0c0;
	}
	.img_map{
		width:320px;
		margin-top:5px;
		margin-left:5px;
		margin-right:5px;
	}
	.tab_map{
		width:320px;
		margin-left:5px;
		margin-right:5px;
		margin-bottom:5px;
		border-collapse: collapse;
	}
	td{
		border-bottom:1px solid #eeeeee;
	}
	td:first-child {
		padding-left:5px;
	}
	td:last-child {
		padding-right:5px;
		text-align: right;
	}
	tr:hover{
		background-color: #eeeeee;
	}
	.btn_map{
		width: 320px;	
		height: 30px;
		vertical-align: middle;
		border: 1px solid #eeeeee;
		border-radius:5px 5px 5px 5px;
		margin-left:5px;
		margin-right:5px;
		font-weight: 400;
	}
	.btn_map:hover{
		background-color: #c0c0c0;
	}
</style> 
</head>
<body>

<!-- ============================== -->
<div id="map" style="width:auto;height:500px;">
	<div class="divSearch">
		<select id="borough">
			<option value="동작구">동작구</option>
			<option value="용산구">용산구</option>
			<option value="강동구">강동구</option>
			<option value="서초구">서초구</option>
			<option value="도봉구">도봉구</option>
			<option value="구로구">구로구</option>
			<option value="은평구">은평구</option>
			<option value="송파구">송파구</option>
			<option value="강서구">강서구</option>
			<option value="양천구">양천구</option>
			<option value="성동구">성동구</option>
			<option value="강남구">강남구</option>
			<option value="마포구">마포구</option>
			<option value=서대문구>서대문구</option>
			<option value="강북구">강북구</option>
			<option value="동대문구">동대문구</option>
			<option value="성북구">성북구</option>
			<option value="광진구">광진구</option>
			<option value="중랑구">중랑구</option>
			<option value="금천구">금천구</option>
			<option value="영등포구">영등포구</option>
			<option value="관악구">관악구</option>
			<option value="종로구">종로구</option>
			<option value="중구">중구</option>
			<option value="노원구">노원구</option>
		</select>
		<input type="hidden" id="address" value="" size="70"> 
		<input type="button" id="search" value="검색" onclick="addressChk()">
	</div>
		<!-- 부트스트랩 primary 버튼 -->
	<img src="../img/myloca.png" class="btn btn-lg btn-primary" id="getMyPositionBtn" onclick="getCurrentPosBtn()" />
</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f45b93b9d4d2b1538f1f65bd30241ea9&libraries=services"></script>
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
	
	//===============
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
	    mapOption = { 
	        center: new kakao.maps.LatLng(37.5567206870, 126.941924105), // 지도의 중심좌표 이젠으로 찍어 놓음
	        level: 4 // 지도의 확대 레벨
	    };
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	 
	// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 => foe문 돌려서 공연정보랑 좌표 넣어주면 될듯?
	var positions = [
		<%for(int i=0;i<list.size(); i++){
			makerViewVO=list.get(i);
			 
		%>
		    {
		        content: '<div class="div_map"><img class="img_map" src="../ConcertImg_upload/<%=makerViewVO.getThumbimg() %>"  style="width:320px;height: 180px" /><table class="tab_map"><colgroup><col style="width: 50%;" /><col style="width: 50%;" /></colgroup><tr><td>WHO?</td><td><%=makerViewVO.getArtist()%></td></tr><tr><td>WHEN?</td><td><%=makerViewVO.getStartdate()%></td></tr><tr><td>WHERE?</td><td><%=makerViewVO.getLocationname()%></td></tr></table><form method="post" action="cDetail.jsp?concertNo=<%=makerViewVO.getConcertno()%>"><input type="submit" class="btn_map" value="공연 상세보기" /></form></div>', 
		        latlng: new kakao.maps.LatLng(<%=makerViewVO.getAxisx()%>, <%=makerViewVO.getAxisy()%>)
		    }<%if(i<list.size()-1){%>
		    	,
			<%}%>
		<%}%>
	];
	
	    
	    //====================================================
	for (var i = 0; i < positions.length; i ++) {
		
	var imageSrc = '../img/pin.png', // 마커이미지의 주소입니다    //if문 써서 장르별로 이미지 주면 될듯?
	    imageSize = new kakao.maps.Size(80, 80), // 마커이미지의 크기입니다
	    imageOption = {offset: new kakao.maps.Point(40, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
	
	 // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
	    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption)
	   
		
	    // 마커를 생성합니다
	    var marker = new kakao.maps.Marker({
	        map: map, // 마커를 표시할 지도
	        position: positions[i].latlng, // 마커의 위치
	        image: markerImage // 마커이미지 설정 
	    });
	    var iwRemoveable = true;  // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
	
	    // 마커에 표시할 인포윈도우를 생성합니다 
	    var infowindow = new kakao.maps.InfoWindow({
	        content: positions[i].content, // 인포윈도우에 표시할 내용
	        removable : iwRemoveable  // 인포윈도 닫는 변수 넣어줌
	    });
	
	    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
	    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
	    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
	    kakao.maps.event.addListener(marker, 'click', makeOverListener(map, marker, infowindow));
	    kakao.maps.event.addListener(marker, '', makeOutListener(infowindow));
	}
	
	// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
	function makeOverListener(map, marker, infowindow) {
	    return function() {
	        infowindow.open(map, marker);
	    };
	}
	
	// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
	function makeOutListener(infowindow) {
	    return function() {
	        infowindow.close();
	    };
	}
	
	/* 아래와 같이도 할 수 있습니다 */
	/*
	for (var i = 0; i < positions.length; i ++) {
	    // 마커를 생성합니다
	    var marker = new kakao.maps.Marker({
	        map: map, // 마커를 표시할 지도
	        position: positions[i].latlng // 마커의 위치
	    });
	
	    // 마커에 표시할 인포윈도우를 생성합니다 
	    var infowindow = new kakao.maps.InfoWindow({
	        content: positions[i].content // 인포윈도우에 표시할 내용
	    });
	
	    // 마커에 이벤트를 등록하는 함수 만들고 즉시 호출하여 클로저를 만듭니다
	    // 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
	    (function(marker, infowindow) {
	        // 마커에 mouseover 이벤트를 등록하고 마우스 오버 시 인포윈도우를 표시합니다 
	        kakao.maps.event.addListener(marker, 'mouseover', function() {
	            infowindow.open(map, marker);
	        });
	
	        // 마커에 mouseout 이벤트를 등록하고 마우스 아웃 시 인포윈도우를 닫습니다
	        kakao.maps.event.addListener(marker, 'mouseout', function() {
	            infowindow.close();
	        });
	    })(marker, infowindow);
	}
	*/
	
	//=====================================
	//(내위치 클릭했을때 실행될 함수)
	function locationLoadSuccess(pos){
	  // 현재 위치 받아오기
	  var currentPos = new kakao.maps.LatLng(pos.coords.latitude,pos.coords.longitude);
	/*    alert(currentPos); */
	  // 지도 이동(기존 위치와 가깝다면 부드럽게 이동)
	  map.panTo(currentPos);
	
	  // 마커 생성
	  var marker = new kakao.maps.Marker({
	      position: currentPos
	  });
	
	   // 기존에 마커가 있다면 제거
	  marker.setMap(null);
	  marker.setMap(map); 
	};
	
	function locationLoadError(pos){
	  alert('위치 정보를 가져오는데 실패했습니다.');
	};
	
	//위치 가져오기 버튼 클릭시 (내위치 클릭했을때 실행될 함수)
	function getCurrentPosBtn(){
	  navigator.geolocation.getCurrentPosition(locationLoadSuccess,locationLoadError);
	};
	//==================================================
		function addressChk() {
	 var gap = $('#borough').val(); // 주소검색어 여기에 검색할 주소이름을 넣으면 됨 |원래 이거 =>var gap = address.value; // 주소검색어
	 if (gap=="") {
	  alert("주소 검색어를 입력해 주십시오.");
	  address.focus();
	  return;
	 }
	 
	 // 주소-좌표 변환 객체를 생성
	 var geocoder = new daum.maps.services.Geocoder();
	
	
	
	 // 주소로 좌표를 검색
	 geocoder.addressSearch(gap, function(result, status) {
	  
	  // 정상적으로 검색이 완료됐으면,
	  if (status == daum.maps.services.Status.OK) {
	   
	   var coords = new daum.maps.LatLng(result[0].y, result[0].x);
	
	   y = result[0].x;
	   x = result[0].y;
	
	
	
	   /* // 결과값으로 받은 위치를 마커로 표시합니다.
	   var marker = new daum.maps.Marker({
	    map: map,
	    position: coords
	   });
	
	
	
	   // 인포윈도우로 장소에 대한 설명표시
	   var infowindow = new daum.maps.InfoWindow({
	    content: '<div style="width:150px;text-align:center;padding:5px 0;">선택위치</div>'
	   });
	
	   infowindow.open(map,marker); */
	   
	   // 지도 중심을 이동
	   map.setCenter(coords);
	
	   /*  coordXY.innerHTML = "<br>X좌표 : " + x + "<br><br>Y좌표 : " + y;  */
	  }
	 });
	}

</script>


</body>
</html>