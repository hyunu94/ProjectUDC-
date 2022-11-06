<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		var str = $('p').html();
		//alert(str);	
		
		if(str==1) {
			$('p').css('background','pink');
		}
		
		var str = $('table').find('p').html();
		//alert(str);
		
		if(str==1) {
			$('td').eq(1).css('background','skyblue');
		}
		
		$('th').closest("div").css('background','lightgreen');
	
		
		$('table tr td').each(function() {
			var str =$(this).find('span').text();
			alert(str);
			
		});
/* 			if (str=="공지") {
				str.closest("td").css('background','plum');
			}
	 */	
	});

</script>
</head>
<body>
<div>
	<table id="example-table-1">
		<tr>
			<th>1</th>
			<th>2</th>
			<th>3</th>
		</tr>
		<tr>
			<td><p>1</p></td>
			<td><span>2</span></td>
			<td><h5>3</h5></td>
		</tr>
		<tr>
			<td><span>공지</span></td>
			<td><span>잡담</span></td>
			<td><span>후기</span></td>
		</tr>
		<tr>
			<td><span>4</span></td>
			<td><span>5</span></td>
			<td><span>6</span></td>
		</tr>
	</table>
</div>
<div>
	<h3>안녕</h3>
</div>
</body>
</html>