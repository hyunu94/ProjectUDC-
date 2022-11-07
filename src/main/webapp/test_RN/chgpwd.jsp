<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<!-- content -->
<link rel="stylesheet" href="../css/table.css">
<!-- content 시작 -->
<div id="London" class="tabcontent">
	<%@ include file="info_1.jsp"%>
</div>

<div id="Paris" class="tabcontent">
	<%@ include file="info_2.jsp"%>
</div>

<div id="Seoul" class="tabcontent">
	<%@ include file="info_3.jsp"%>
</div>

<div class="tab">
	<button class="tablinks" onclick="openCity(event, 'London')">London</button>
	<button class="tablinks" onclick="openCity(event, 'Paris')">Paris</button>
	<button class="tablinks" onclick="openCity(event, 'Tokyo')">Tokyo</button>
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
<!-- content 끝 -->
<%@ include file="../inc/bottom.jsp"%>