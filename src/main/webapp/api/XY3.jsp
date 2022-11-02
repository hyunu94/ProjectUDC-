<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>다음지도 - 주소로 위도/경도 좌표값 얻기</title>
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
</head>
<body>

<p style="text-align:center;">[주소로 위도, 경도 좌표값 얻기]</p>
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
<input type="text" id="address" value="" size="70"> 
<input type="button" value="좌표값 검색" onclick="addressChk()">

<div id="map" style="width:800px;height:500px;"></div>

<div id="coordXY"></div>

<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f45b93b9d4d2b1538f1f65bd30241ea9&libraries=services"></script>
<script type="text/javascript">

var lat=0;
var lon=0;
//현재위치 좌표 알려줌
navigator.geolocation.getCurrentPosition(function(pos) {
    console.log(pos);
    var latitude = pos.coords.latitude;
    var longitude = pos.coords.longitude;
    alert("현재 위치는 : " + latitude + ", "+ longitude);
    
    lat = latitude;
    lon = longitude;
});

alert(lat);
//===============================
	
	
var address      = document.getElementById("address");
var mapContainer = document.getElementById("map");
var coordXY   = document.getElementById("coordXY");
var mapOption;
var map;
var x=37.5579348; //초기화면 x좌표
var y=126.9941819; //초기화면 y좌표

if (address.value=="") {
	
 mapOption = {
  center: new daum.maps.LatLng(x, y), // 초기 좌표
        level: 4            // 지도의 확대 레벨

 };

}

// 지도 생성
map = new daum.maps.Map(mapContainer, mapOption);

//내가 넣음
/* $(function(){
	alert($('#add').val());
}); */


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



   // 결과값으로 받은 위치를 마커로 표시합니다.
   var marker = new daum.maps.Marker({
    map: map,
    position: coords
   });



   // 인포윈도우로 장소에 대한 설명표시
   var infowindow = new daum.maps.InfoWindow({
    content: '<div style="width:150px;text-align:center;padding:5px 0;">선택위치</div>'
   });

   infowindow.open(map,marker);
   
   // 지도 중심을 이동
   map.setCenter(coords);

   coordXY.innerHTML = "<br>X좌표 : " + x + "<br><br>Y좌표 : " + y;
  }
 });
}


</script>

</body>
</html>