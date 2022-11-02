<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>�������� - �ּҷ� ����/�浵 ��ǥ�� ���</title>
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
</head>
<body>

<p style="text-align:center;">[�ּҷ� ����, �浵 ��ǥ�� ���]</p>
<select id="borough">
	<option value="���۱�">���۱�</option>
	<option value="��걸">��걸</option>
	<option value="������">������</option>
	<option value="���ʱ�">���ʱ�</option>
	<option value="������">������</option>
	<option value="���α�">���α�</option>
	<option value="����">����</option>
	<option value="���ı�">���ı�</option>
	<option value="������">������</option>
	<option value="��õ��">��õ��</option>
	<option value="������">������</option>
	<option value="������">������</option>
	<option value="������">������</option>
	<option value=���빮��>���빮��</option>
	<option value="���ϱ�">���ϱ�</option>
	<option value="���빮��">���빮��</option>
	<option value="���ϱ�">���ϱ�</option>
	<option value="������">������</option>
	<option value="�߶���">�߶���</option>
	<option value="��õ��">��õ��</option>
	<option value="��������">��������</option>
	<option value="���Ǳ�">���Ǳ�</option>
	<option value="���α�">���α�</option>
	<option value="�߱�">�߱�</option>
	<option value="�����">�����</option>
</select>
<input type="text" id="address" value="" size="70"> 
<input type="button" value="��ǥ�� �˻�" onclick="addressChk()">

<div id="map" style="width:800px;height:500px;"></div>

<div id="coordXY"></div>

<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f45b93b9d4d2b1538f1f65bd30241ea9&libraries=services"></script>
<script type="text/javascript">

var lat=0;
var lon=0;
//������ġ ��ǥ �˷���
navigator.geolocation.getCurrentPosition(function(pos) {
    console.log(pos);
    var latitude = pos.coords.latitude;
    var longitude = pos.coords.longitude;
    alert("���� ��ġ�� : " + latitude + ", "+ longitude);
    
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
var x=37.5579348; //�ʱ�ȭ�� x��ǥ
var y=126.9941819; //�ʱ�ȭ�� y��ǥ

if (address.value=="") {
	
 mapOption = {
  center: new daum.maps.LatLng(x, y), // �ʱ� ��ǥ
        level: 4            // ������ Ȯ�� ����

 };

}

// ���� ����
map = new daum.maps.Map(mapContainer, mapOption);

//���� ����
/* $(function(){
	alert($('#add').val());
}); */


function addressChk() {
 var gap = $('#borough').val(); // �ּҰ˻��� ���⿡ �˻��� �ּ��̸��� ������ �� |���� �̰� =>var gap = address.value; // �ּҰ˻���
 if (gap=="") {
  alert("�ּ� �˻�� �Է��� �ֽʽÿ�.");
  address.focus();
  return;
 }
 
 // �ּ�-��ǥ ��ȯ ��ü�� ����
 var geocoder = new daum.maps.services.Geocoder();



 // �ּҷ� ��ǥ�� �˻�
 geocoder.addressSearch(gap, function(result, status) {
  
  // ���������� �˻��� �Ϸ������,
  if (status == daum.maps.services.Status.OK) {
   
   var coords = new daum.maps.LatLng(result[0].y, result[0].x);

   y = result[0].x;
   x = result[0].y;



   // ��������� ���� ��ġ�� ��Ŀ�� ǥ���մϴ�.
   var marker = new daum.maps.Marker({
    map: map,
    position: coords
   });



   // ����������� ��ҿ� ���� ����ǥ��
   var infowindow = new daum.maps.InfoWindow({
    content: '<div style="width:150px;text-align:center;padding:5px 0;">������ġ</div>'
   });

   infowindow.open(map,marker);
   
   // ���� �߽��� �̵�
   map.setCenter(coords);

   coordXY.innerHTML = "<br>X��ǥ : " + x + "<br><br>Y��ǥ : " + y;
  }
 });
}


</script>

</body>
</html>