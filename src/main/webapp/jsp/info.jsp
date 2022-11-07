<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<!-- content -->
<link rel="stylesheet" href="../css/table.css">
<div class="container">
	<div class="tab">
		<button class="tablinks" onclick="openCity(event, 'London')" id="defaultOpen">회원정보 보기</button>
		<button class="tablinks" onclick="openCity(event, 'Paris')">작성한 글</button>
		<button class="tablinks" onclick="openCity(event, 'Seoul')">작성한 댓글</button>
		<button class="tablinks" onclick="openCity(event, 'Tokyo')">예매/결제 내역</button>
	</div>

	<!-- Tab content -->
	<div id="London" class="tabcontent">
		<%@ include file="info_1.jsp"%>
	</div>

	<div id="Paris" class="tabcontent">
		<%@ include file="info_2.jsp"%>
	</div>

	<div id="Seoul" class="tabcontent">
		<%@ include file="info_3.jsp"%>
	</div>

	<div id="Tokyo" class="tabcontent">
		<h3>예매/결제 내역</h3>
		<p>Tokyo is the capital of Japan.</p>
	</div>
</div>
<script>
	function openCity(evt, cityName) {
		var i, tabcontent, tablinks;
		tabcontent = document.getElementsByClassName("tabcontent");
		for (i = 0; i < tabcontent.length; i++) {
			tabcontent[i].style.display = "none";
		}
		tablinks = document.getElementsByClassName("tablinks");
		for (i = 0; i < tablinks.length; i++) {
			tablinks[i].className = tablinks[i].className
					.replace(" active", "");
		}
		document.getElementById(cityName).style.display = "block";
		evt.currentTarget.className += " active";
	}
	// Get the element with id="defaultOpen" and click on it
	document.getElementById("defaultOpen").click();
</script>
<!-- content -->
<%@ include file="../inc/bottom.jsp"%>