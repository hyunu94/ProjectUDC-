<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>UDC</title>
    
</head>
<body>
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
<input type="button" value="검색" onclick="addressChk()">

<!-- ============================== -->
<div id="map" style="width:700px;height:500px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f45b93b9d4d2b1538f1f65bd30241ea9&libraries=services"></script>
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
<script type="text/javascript">

//===============

var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = { 
        center: new kakao.maps.LatLng(37.655214, 127.0770748), // 지도의 중심좌표
        level: 10 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
 
// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 => foe문 돌려서 공연정보랑 좌표 넣어주면 될듯?
var positions = [
    {
        content: '<div style="width:150px;height: 250px;"><img src="../img/mountains3.jpg" style="width:150px;height: 130px"><br>장르 : 락<br>일시 : 2022.11.03<br>~ 2022.11.05<br>출연 : 신짱구<br>위치 : 마포구</div>', 
        latlng: new kakao.maps.LatLng(37.5622856, 126.9087601)
    },
    {
        content: '<div style="width:150px;height: 250px;"><img src="../img/mountains1.jpg" style="width:150px;height: 130px"><br>장르 : 재즈<br>일시 : 2022.12.03<br>~ 2022.12.05<br>출연 : 철수 <br>위치 : 서대문구</div>', 
        latlng: new kakao.maps.LatLng(37.5822045, 126.9358821)
    },
    {
        content: '<div style="width:150px;height: 250px;"><img src="../img/mountains2.jpg" style="width:150px;height: 130px"><br>장르 : 가요<br>일시 : 2022.11.07<br>출연 : 김봉중 <br>위치 : 강남</div>', 
        latlng: new kakao.maps.LatLng(37.4959668, 127.0674358)
    },
    {
        content: '<div>근린공원</div>',
        latlng: new kakao.maps.LatLng(33.451393, 126.570738)
    }
];

    
    //====================================================
for (var i = 0; i < positions.length; i ++) {
	
var imageSrc = '../img/saxophone.png', // 마커이미지의 주소입니다    //if문 써서 장르별로 이미지 주면 될듯?
    imageSize = new kakao.maps.Size(40, 40), // 마커이미지의 크기입니다
    imageOption = {offset: new kakao.maps.Point(20, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

 // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption)
   
	
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng, // 마커의 위치
        image: markerImage // 마커이미지 설정 
    });

    // 마커에 표시할 인포윈도우를 생성합니다 
    var infowindow = new kakao.maps.InfoWindow({
        content: positions[i].content // 인포윈도우에 표시할 내용
    });

    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
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

    coordXY.innerHTML = "<br>X좌표 : " + x + "<br><br>Y좌표 : " + y; 
  }
 });
}

</script>

	<!-- 부트스트랩 primary 버튼 -->
<button type="button" class="btn btn-lg btn-primary" id="getMyPositionBtn"
	onclick="getCurrentPosBtn()">내 위치</button>
</body>
</html>