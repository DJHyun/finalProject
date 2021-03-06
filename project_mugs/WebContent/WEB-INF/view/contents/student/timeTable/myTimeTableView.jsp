<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

input{
   text-align:center;
}

#thead {
   width:100px;
   
}
table{
   width:100%;
   
}
td{
   padding: 5px;
   border: 1px solid black;
}
select{
   width:120px;
   height: 35px;
   padding: 5px;
}
#product_info_layer{
   width:700px;
   border: 1px solid gray;
   padding:5px;
   display: none;/*최초 로딩시에는 안보이도록 처리*/
}
#tbody{
   cursor: pointer;
}
h3{
   font-family:돋움체;
}
</style>
<script type="text/javascript" src="/project_mugs/resource/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
function popupOpen(subjectName, buildingName, roomName) {
	var popOption = "width=470, height=470, resizable=no, scrollbars=no, status=no;";
	window.open("getMapByBuildingName.do?subjectName="+subjectName+"&buildingName="+buildingName+"&roomName="+roomName,"map", popOption);
}

$(document).ready(function(){
		var text="";
			<c:forEach items="${requestScope.myTimeTableResult}" var="result">
				<c:choose>			
					<c:when test="${result.subject.gyoShi1 eq '1' && result.subject.yoYil1 eq '월'}">
						$("#tbody tr").eq(0).children().eq(1).css("background-color", "${result.color}");
						$("#tbody tr").eq(1).children().eq(1).css("background-color", "${result.color}");
						$("#tbody tr").eq(0).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(1).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						<c:choose>
							<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '월'}">
								$("#tbody tr").eq(2).children().eq(1).css("background-color", "${result.color}");
								$("#tbody tr").eq(3).children().eq(1).css("background-color", "${result.color}");
								$("#tbody tr").eq(2).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(3).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '월'}">
								$("#tbody tr").eq(3).children().eq(1).css("background-color", "${result.color}");
								$("#tbody tr").eq(4).children().eq(1).css("background-color", "${result.color}");
								$("#tbody tr").eq(3).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(4).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '월'}">
								$("#tbody tr").eq(4).children().eq(1).css("background-color", "${result.color}");
								$("#tbody tr").eq(5).children().eq(1).css("background-color", "${result.color}");
								$("#tbody tr").eq(4).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(5).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '월'}">
								$("#tbody tr").eq(5).children().eq(1).css("background-color", "${result.color}");
								$("#tbody tr").eq(6).children().eq(1).css("background-color", "${result.color}");
								$("#tbody tr").eq(5).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(6).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '월'}">
								$("#tbody tr").eq(6).children().eq(1).css("background-color", "${result.color}");
								$("#tbody tr").eq(7).children().eq(1).css("background-color", "${result.color}");
								$("#tbody tr").eq(6).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(7).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '월'}">
								$("#tbody tr").eq(7).children().eq(1).css("background-color", "${result.color}");
								$("#tbody tr").eq(8).children().eq(1).css("background-color", "${result.color}");
								$("#tbody tr").eq(7).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(8).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '월'}">
								$("#tbody tr").eq(8).children().eq(1).css("background-color", "${result.color}");
								$("#tbody tr").eq(9).children().eq(1).css("background-color", "${result.color}");
								$("#tbody tr").eq(8).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(9).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '화'}">
								$("#tbody tr").eq(0).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(1).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(0).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(1).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '화'}">
								$("#tbody tr").eq(1).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(2).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(1).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(2).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '화'}">
								$("#tbody tr").eq(2).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(3).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(2).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(3).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '화'}">
								$("#tbody tr").eq(3).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(4).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(3).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(4).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '화'}">
								$("#tbody tr").eq(4).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(5).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(4).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(5).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '화'}">
								$("#tbody tr").eq(5).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(5).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '화'}">
								$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '화'}">
								$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '화'}">
								$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(9).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(9).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '수'}">
								$("#tbody tr").eq(0).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(0).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '수'}">
								$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '수'}">
								$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '수'}">
								$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '수'}">
								$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '수'}">
								$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '수'}">
								$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '수'}">
								$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '수'}">
								$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(9).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(9).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '목'}">
								$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '목'}">
								$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
								$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
								$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
								$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
								$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
								$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
								$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
								$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
								$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
								$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
								$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
								$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
								$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
								$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
								$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
								$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
								$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
						</c:choose>
					</c:when>
					<c:when test="${result.subject.gyoShi1 eq '2' && result.subject.yoYil1 eq '월'}">
						$("#tbody tr").eq(1).children().eq(1).css("background-color", "${result.color}");
						$("#tbody tr").eq(2).children().eq(1).css("background-color", "${result.color}");
						$("#tbody tr").eq(1).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(2).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						<c:choose>
							<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '월'}">
								$("#tbody tr").eq(3).children().eq(1).css("background-color", "${result.color}");
								$("#tbody tr").eq(4).children().eq(1).css("background-color", "${result.color}");
								$("#tbody tr").eq(3).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(4).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '월'}">
								$("#tbody tr").eq(4).children().eq(1).css("background-color", "${result.color}");
								$("#tbody tr").eq(5).children().eq(1).css("background-color", "${result.color}");
								$("#tbody tr").eq(4).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(5).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '월'}">
								$("#tbody tr").eq(5).children().eq(1).css("background-color", "${result.color}");
								$("#tbody tr").eq(6).children().eq(1).css("background-color", "${result.color}");
								$("#tbody tr").eq(5).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(6).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '월'}">
								$("#tbody tr").eq(6).children().eq(1).css("background-color", "${result.color}");
								$("#tbody tr").eq(7).children().eq(1).css("background-color", "${result.color}");
								$("#tbody tr").eq(6).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(7).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '월'}">
								$("#tbody tr").eq(7).children().eq(1).css("background-color", "${result.color}");
								$("#tbody tr").eq(8).children().eq(1).css("background-color", "${result.color}");
								$("#tbody tr").eq(7).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(8).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '월'}">
								$("#tbody tr").eq(8).children().eq(1).css("background-color", "${result.color}");
								$("#tbody tr").eq(9).children().eq(1).css("background-color", "${result.color}");
								$("#tbody tr").eq(8).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(9).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '화'}">
								$("#tbody tr").eq(0).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(1).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(0).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(1).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '화'}">
								$("#tbody tr").eq(1).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(2).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(1).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(2).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '화'}">
								$("#tbody tr").eq(2).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(3).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(2).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(3).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '화'}">
								$("#tbody tr").eq(3).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(4).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(3).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(4).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '화'}">
								$("#tbody tr").eq(4).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(5).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(4).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(5).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '화'}">
								$("#tbody tr").eq(5).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(5).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '화'}">
								$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '화'}">
								$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '화'}">
								$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(9).children().eq(2).css("background-color", "${result.color}");
								$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(9).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '수'}">
								$("#tbody tr").eq(0).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(0).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '수'}">
								$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '수'}">
								$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '수'}">
								$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '수'}">
								$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '수'}">
								$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '수'}">
								$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '수'}">
								$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '수'}">
								$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(9).children().eq(3).css("background-color", "${result.color}");
								$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(9).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '목'}">
								$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '목'}">
								$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
								$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
								$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
								$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
								$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
								$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
								$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
								$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
								$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
								$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
								$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
								$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
								$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
								$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
								$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
								$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
								$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
							<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
								$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
								$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
								$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							</c:when>
						</c:choose>
					</c:when>
					<c:when test="${result.subject.gyoShi1 eq '3' && result.subject.yoYil1 eq '월'}">
					$("#tbody tr").eq(2).children().eq(1).css("background-color", "${result.color}");
					$("#tbody tr").eq(3).children().eq(1).css("background-color", "${result.color}");
					$("#tbody tr").eq(2).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(3).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					<c:choose>
						<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '월'}">
							$("#tbody tr").eq(4).children().eq(1).css("background-color", "${result.color}");
							$("#tbody tr").eq(5).children().eq(1).css("background-color", "${result.color}");
							$("#tbody tr").eq(4).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(5).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '월'}">
							$("#tbody tr").eq(5).children().eq(1).css("background-color", "${result.color}");
							$("#tbody tr").eq(6).children().eq(1).css("background-color", "${result.color}");
							$("#tbody tr").eq(5).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(6).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '월'}">
							$("#tbody tr").eq(6).children().eq(1).css("background-color", "${result.color}");
							$("#tbody tr").eq(7).children().eq(1).css("background-color", "${result.color}");
							$("#tbody tr").eq(6).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(7).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '월'}">
							$("#tbody tr").eq(7).children().eq(1).css("background-color", "${result.color}");
							$("#tbody tr").eq(8).children().eq(1).css("background-color", "${result.color}");
							$("#tbody tr").eq(7).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(8).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '월'}">
							$("#tbody tr").eq(8).children().eq(1).css("background-color", "${result.color}");
							$("#tbody tr").eq(9).children().eq(1).css("background-color", "${result.color}");
							$("#tbody tr").eq(8).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(9).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '화'}">
							$("#tbody tr").eq(0).children().eq(2).css("background-color", "${result.color}");
							$("#tbody tr").eq(1).children().eq(2).css("background-color", "${result.color}");
							$("#tbody tr").eq(0).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(1).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '화'}">
							$("#tbody tr").eq(1).children().eq(2).css("background-color", "${result.color}");
							$("#tbody tr").eq(2).children().eq(2).css("background-color", "${result.color}");
							$("#tbody tr").eq(1).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(2).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '화'}">
							$("#tbody tr").eq(2).children().eq(2).css("background-color", "${result.color}");
							$("#tbody tr").eq(3).children().eq(2).css("background-color", "${result.color}");
							$("#tbody tr").eq(2).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(3).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '화'}">
							$("#tbody tr").eq(3).children().eq(2).css("background-color", "${result.color}");
							$("#tbody tr").eq(4).children().eq(2).css("background-color", "${result.color}");
							$("#tbody tr").eq(3).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(4).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '화'}">
							$("#tbody tr").eq(4).children().eq(2).css("background-color", "${result.color}");
							$("#tbody tr").eq(5).children().eq(2).css("background-color", "${result.color}");
							$("#tbody tr").eq(4).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(5).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '화'}">
							$("#tbody tr").eq(5).children().eq(2).css("background-color", "${result.color}");
							$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
							$("#tbody tr").eq(5).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '화'}">
							$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
							$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
							$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '화'}">
							$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
							$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
							$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '화'}">
							$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
							$("#tbody tr").eq(9).children().eq(2).css("background-color", "${result.color}");
							$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(9).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '수'}">
							$("#tbody tr").eq(0).children().eq(3).css("background-color", "${result.color}");
							$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
							$("#tbody tr").eq(0).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '수'}">
							$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
							$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
							$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '수'}">
							$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
							$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
							$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '수'}">
							$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
							$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
							$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '수'}">
							$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
							$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
							$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '수'}">
							$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
							$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
							$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '수'}">
							$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
							$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
							$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '수'}">
							$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
							$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
							$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '수'}">
							$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
							$("#tbody tr").eq(9).children().eq(3).css("background-color", "${result.color}");
							$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(9).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '목'}">
							$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
							$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
							$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '목'}">
							$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
							$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
							$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
							$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
							$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
							$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
							$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
							$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
							$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
							$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
							$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
							$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
							$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
							$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
							$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
							$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
							$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
							$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
							$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
							$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
							$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
							$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
							$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
							$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
							$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
							$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
							$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
							$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
							$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
							$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
							$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
							$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
							$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
							$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
							$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
							$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
							$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
							$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
							$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
							$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
							$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
							$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
							$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
							$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
							$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
							$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
							$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
							$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
						<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
							$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
							$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
							$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
							$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						</c:when>
					</c:choose>
				</c:when>
				<c:when test="${result.subject.gyoShi1 eq '4' && result.subject.yoYil1 eq '월'}">
				$("#tbody tr").eq(3).children().eq(1).css("background-color", "${result.color}");
				$("#tbody tr").eq(4).children().eq(1).css("background-color", "${result.color}");
				$("#tbody tr").eq(3).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(4).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				<c:choose>
					<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '월'}">
						$("#tbody tr").eq(5).children().eq(1).css("background-color", "${result.color}");
						$("#tbody tr").eq(6).children().eq(1).css("background-color", "${result.color}");
						$("#tbody tr").eq(5).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(6).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '월'}">
						$("#tbody tr").eq(6).children().eq(1).css("background-color", "${result.color}");
						$("#tbody tr").eq(7).children().eq(1).css("background-color", "${result.color}");
						$("#tbody tr").eq(6).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(7).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '월'}">
						$("#tbody tr").eq(7).children().eq(1).css("background-color", "${result.color}");
						$("#tbody tr").eq(8).children().eq(1).css("background-color", "${result.color}");
						$("#tbody tr").eq(7).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(8).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '월'}">
						$("#tbody tr").eq(8).children().eq(1).css("background-color", "${result.color}");
						$("#tbody tr").eq(9).children().eq(1).css("background-color", "${result.color}");
						$("#tbody tr").eq(8).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(9).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '화'}">
						$("#tbody tr").eq(0).children().eq(2).css("background-color", "${result.color}");
						$("#tbody tr").eq(1).children().eq(2).css("background-color", "${result.color}");
						$("#tbody tr").eq(0).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(1).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '화'}">
						$("#tbody tr").eq(1).children().eq(2).css("background-color", "${result.color}");
						$("#tbody tr").eq(2).children().eq(2).css("background-color", "${result.color}");
						$("#tbody tr").eq(1).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(2).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '화'}">
						$("#tbody tr").eq(2).children().eq(2).css("background-color", "${result.color}");
						$("#tbody tr").eq(3).children().eq(2).css("background-color", "${result.color}");
						$("#tbody tr").eq(2).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(3).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '화'}">
						$("#tbody tr").eq(3).children().eq(2).css("background-color", "${result.color}");
						$("#tbody tr").eq(4).children().eq(2).css("background-color", "${result.color}");
						$("#tbody tr").eq(3).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(4).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '화'}">
						$("#tbody tr").eq(4).children().eq(2).css("background-color", "${result.color}");
						$("#tbody tr").eq(5).children().eq(2).css("background-color", "${result.color}");
						$("#tbody tr").eq(4).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(5).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '화'}">
						$("#tbody tr").eq(5).children().eq(2).css("background-color", "${result.color}");
						$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
						$("#tbody tr").eq(5).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '화'}">
						$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
						$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
						$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '화'}">
						$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
						$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
						$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '화'}">
						$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
						$("#tbody tr").eq(9).children().eq(2).css("background-color", "${result.color}");
						$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(9).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '수'}">
						$("#tbody tr").eq(0).children().eq(3).css("background-color", "${result.color}");
						$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
						$("#tbody tr").eq(0).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '수'}">
						$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
						$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
						$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '수'}">
						$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
						$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
						$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '수'}">
						$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
						$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
						$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '수'}">
						$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
						$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
						$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '수'}">
						$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
						$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
						$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '수'}">
						$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
						$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
						$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '수'}">
						$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
						$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
						$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '수'}">
						$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
						$("#tbody tr").eq(9).children().eq(3).css("background-color", "${result.color}");
						$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(9).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '목'}">
						$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
						$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
						$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '목'}">
						$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
						$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
						$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
						$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
						$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
						$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
						$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
						$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
						$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
						$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
						$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
						$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
						$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
						$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
						$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
						$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
						$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
						$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
						$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
						$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
						$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
						$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
						$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
						$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
						$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
						$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
						$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
						$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
						$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
						$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
						$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
						$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
						$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
						$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
						$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
						$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
						$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
						$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
						$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
						$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
						$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
						$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
						$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
						$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
						$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
						$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
						$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
						$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
					<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
						$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
						$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
						$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
						$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					</c:when>
				</c:choose>
			</c:when>
			<c:when test="${result.subject.gyoShi1 eq '5' && result.subject.yoYil1 eq '월'}">
			$("#tbody tr").eq(4).children().eq(1).css("background-color", "${result.color}");
			$("#tbody tr").eq(5).children().eq(1).css("background-color", "${result.color}");
			$("#tbody tr").eq(4).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(5).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			<c:choose>
				<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '월'}">
					$("#tbody tr").eq(6).children().eq(1).css("background-color", "${result.color}");
					$("#tbody tr").eq(7).children().eq(1).css("background-color", "${result.color}");
					$("#tbody tr").eq(6).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(7).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '월'}">
					$("#tbody tr").eq(7).children().eq(1).css("background-color", "${result.color}");
					$("#tbody tr").eq(8).children().eq(1).css("background-color", "${result.color}");
					$("#tbody tr").eq(7).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(8).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '월'}">
					$("#tbody tr").eq(8).children().eq(1).css("background-color", "${result.color}");
					$("#tbody tr").eq(9).children().eq(1).css("background-color", "${result.color}");
					$("#tbody tr").eq(8).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(9).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '화'}">
					$("#tbody tr").eq(0).children().eq(2).css("background-color", "${result.color}");
					$("#tbody tr").eq(1).children().eq(2).css("background-color", "${result.color}");
					$("#tbody tr").eq(0).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(1).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '화'}">
					$("#tbody tr").eq(1).children().eq(2).css("background-color", "${result.color}");
					$("#tbody tr").eq(2).children().eq(2).css("background-color", "${result.color}");
					$("#tbody tr").eq(1).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(2).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '화'}">
					$("#tbody tr").eq(2).children().eq(2).css("background-color", "${result.color}");
					$("#tbody tr").eq(3).children().eq(2).css("background-color", "${result.color}");
					$("#tbody tr").eq(2).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(3).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '화'}">
					$("#tbody tr").eq(3).children().eq(2).css("background-color", "${result.color}");
					$("#tbody tr").eq(4).children().eq(2).css("background-color", "${result.color}");
					$("#tbody tr").eq(3).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(4).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '화'}">
					$("#tbody tr").eq(4).children().eq(2).css("background-color", "${result.color}");
					$("#tbody tr").eq(5).children().eq(2).css("background-color", "${result.color}");
					$("#tbody tr").eq(4).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(5).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '화'}">
					$("#tbody tr").eq(5).children().eq(2).css("background-color", "${result.color}");
					$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
					$("#tbody tr").eq(5).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '화'}">
					$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
					$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
					$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '화'}">
					$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
					$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
					$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '화'}">
					$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
					$("#tbody tr").eq(9).children().eq(2).css("background-color", "${result.color}");
					$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(9).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '수'}">
					$("#tbody tr").eq(0).children().eq(3).css("background-color", "${result.color}");
					$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
					$("#tbody tr").eq(0).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '수'}">
					$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
					$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
					$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '수'}">
					$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
					$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
					$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '수'}">
					$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
					$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
					$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '수'}">
					$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
					$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
					$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '수'}">
					$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
					$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
					$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '수'}">
					$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
					$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
					$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '수'}">
					$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
					$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
					$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '수'}">
					$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
					$("#tbody tr").eq(9).children().eq(3).css("background-color", "${result.color}");
					$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(9).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '목'}">
					$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
					$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
					$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '목'}">
					$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
					$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
					$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
					$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
					$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
					$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
					$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
					$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
					$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
					$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
					$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
					$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
					$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
					$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
					$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
					$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
					$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
					$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
					$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
					$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
					$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
					$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
					$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
					$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
					$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
					$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
					$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
					$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
					$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
					$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
					$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
					$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
					$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
					$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
					$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
					$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
					$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
					$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
					$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
					$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
					$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
					$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
					$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
					$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
					$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
					$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
					$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
					$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
				<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
					$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
					$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
					$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
					$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				</c:when>
			</c:choose>
		</c:when>
		<c:when test="${result.subject.gyoShi1 eq '6' && result.subject.yoYil1 eq '월'}">
		$("#tbody tr").eq(5).children().eq(1).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(1).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		<c:choose>
			<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '월'}">
				$("#tbody tr").eq(7).children().eq(1).css("background-color", "${result.color}");
				$("#tbody tr").eq(8).children().eq(1).css("background-color", "${result.color}");
				$("#tbody tr").eq(7).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(8).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '월'}">
				$("#tbody tr").eq(8).children().eq(1).css("background-color", "${result.color}");
				$("#tbody tr").eq(9).children().eq(1).css("background-color", "${result.color}");
				$("#tbody tr").eq(8).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(9).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '화'}">
				$("#tbody tr").eq(0).children().eq(2).css("background-color", "${result.color}");
				$("#tbody tr").eq(1).children().eq(2).css("background-color", "${result.color}");
				$("#tbody tr").eq(0).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(1).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '화'}">
				$("#tbody tr").eq(1).children().eq(2).css("background-color", "${result.color}");
				$("#tbody tr").eq(2).children().eq(2).css("background-color", "${result.color}");
				$("#tbody tr").eq(1).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(2).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '화'}">
				$("#tbody tr").eq(2).children().eq(2).css("background-color", "${result.color}");
				$("#tbody tr").eq(3).children().eq(2).css("background-color", "${result.color}");
				$("#tbody tr").eq(2).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(3).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '화'}">
				$("#tbody tr").eq(3).children().eq(2).css("background-color", "${result.color}");
				$("#tbody tr").eq(4).children().eq(2).css("background-color", "${result.color}");
				$("#tbody tr").eq(3).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(4).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '화'}">
				$("#tbody tr").eq(4).children().eq(2).css("background-color", "${result.color}");
				$("#tbody tr").eq(5).children().eq(2).css("background-color", "${result.color}");
				$("#tbody tr").eq(4).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(5).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '화'}">
				$("#tbody tr").eq(5).children().eq(2).css("background-color", "${result.color}");
				$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
				$("#tbody tr").eq(5).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '화'}">
				$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
				$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
				$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '화'}">
				$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
				$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
				$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '화'}">
				$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
				$("#tbody tr").eq(9).children().eq(2).css("background-color", "${result.color}");
				$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(9).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '수'}">
				$("#tbody tr").eq(0).children().eq(3).css("background-color", "${result.color}");
				$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
				$("#tbody tr").eq(0).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '수'}">
				$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
				$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
				$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '수'}">
				$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
				$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
				$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '수'}">
				$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
				$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
				$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '수'}">
				$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
				$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
				$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '수'}">
				$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
				$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
				$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '수'}">
				$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
				$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
				$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '수'}">
				$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
				$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
				$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '수'}">
				$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
				$("#tbody tr").eq(9).children().eq(3).css("background-color", "${result.color}");
				$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(9).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '목'}">
				$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
				$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
				$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '목'}">
				$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
				$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
				$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
				$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
				$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
				$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
				$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
				$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
				$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
				$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
				$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
				$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
				$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
				$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
				$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
				$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
				$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
				$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
				$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
				$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
				$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
				$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
				$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
				$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
				$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
				$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
				$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
				$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
				$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
				$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
				$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
				$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
				$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
				$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
				$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
				$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
				$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
				$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
				$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
				$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
				$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
				$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
				$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
				$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
				$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
				$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
				$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
				$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
			<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
				$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
				$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
				$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
				$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			</c:when>
		</c:choose>
	</c:when>
	<c:when test="${result.subject.gyoShi1 eq '7' && result.subject.yoYil1 eq '월'}">
	$("#tbody tr").eq(6).children().eq(1).css("background-color", "${result.color}");
	$("#tbody tr").eq(7).children().eq(1).css("background-color", "${result.color}");
	$("#tbody tr").eq(6).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	$("#tbody tr").eq(7).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	<c:choose>
		<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '월'}">
			$("#tbody tr").eq(8).children().eq(1).css("background-color", "${result.color}");
			$("#tbody tr").eq(9).children().eq(1).css("background-color", "${result.color}");
			$("#tbody tr").eq(8).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(9).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '화'}">
			$("#tbody tr").eq(0).children().eq(2).css("background-color", "${result.color}");
			$("#tbody tr").eq(1).children().eq(2).css("background-color", "${result.color}");
			$("#tbody tr").eq(0).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(1).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '화'}">
			$("#tbody tr").eq(1).children().eq(2).css("background-color", "${result.color}");
			$("#tbody tr").eq(2).children().eq(2).css("background-color", "${result.color}");
			$("#tbody tr").eq(1).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(2).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '화'}">
			$("#tbody tr").eq(2).children().eq(2).css("background-color", "${result.color}");
			$("#tbody tr").eq(3).children().eq(2).css("background-color", "${result.color}");
			$("#tbody tr").eq(2).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(3).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '화'}">
			$("#tbody tr").eq(3).children().eq(2).css("background-color", "${result.color}");
			$("#tbody tr").eq(4).children().eq(2).css("background-color", "${result.color}");
			$("#tbody tr").eq(3).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(4).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '화'}">
			$("#tbody tr").eq(4).children().eq(2).css("background-color", "${result.color}");
			$("#tbody tr").eq(5).children().eq(2).css("background-color", "${result.color}");
			$("#tbody tr").eq(4).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(5).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '화'}">
			$("#tbody tr").eq(5).children().eq(2).css("background-color", "${result.color}");
			$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
			$("#tbody tr").eq(5).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '화'}">
			$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
			$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
			$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '화'}">
			$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
			$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
			$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '화'}">
			$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
			$("#tbody tr").eq(9).children().eq(2).css("background-color", "${result.color}");
			$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(9).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '수'}">
			$("#tbody tr").eq(0).children().eq(3).css("background-color", "${result.color}");
			$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
			$("#tbody tr").eq(0).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '수'}">
			$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
			$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
			$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '수'}">
			$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
			$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
			$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '수'}">
			$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
			$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
			$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '수'}">
			$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
			$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
			$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '수'}">
			$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
			$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
			$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '수'}">
			$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
			$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
			$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '수'}">
			$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
			$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
			$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '수'}">
			$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
			$("#tbody tr").eq(9).children().eq(3).css("background-color", "${result.color}");
			$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(9).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '목'}">
			$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
			$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
			$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '목'}">
			$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
			$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
			$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
			$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
			$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
			$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
			$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
			$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
			$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
			$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
			$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
			$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
			$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
			$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
			$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
			$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
			$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
			$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
			$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
			$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
			$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
			$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
			$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
			$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
			$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
			$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
			$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
			$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
			$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
			$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
			$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
			$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
			$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
			$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
			$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
			$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
			$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
			$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
			$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
			$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
			$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
			$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
			$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
			$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
			$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
			$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
			$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
			$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
		<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
			$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
			$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
			$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
			$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		</c:when>
	</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '8' && result.subject.yoYil1 eq '월'}">
$("#tbody tr").eq(7).children().eq(1).css("background-color", "${result.color}");
$("#tbody tr").eq(8).children().eq(1).css("background-color", "${result.color}");
$("#tbody tr").eq(7).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(8).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(0).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(1).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(2).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(3).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(4).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(5).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(0).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '9' && result.subject.yoYil1 eq '월'}">
$("#tbody tr").eq(8).children().eq(1).css("background-color", "${result.color}");
$("#tbody tr").eq(9).children().eq(1).css("background-color", "${result.color}");
$("#tbody tr").eq(8).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(9).children().eq(1).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(0).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(1).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(2).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(3).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(4).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(5).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(0).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '1' && result.subject.yoYil1 eq '화'}">
$("#tbody tr").eq(0).children().eq(2).css("background-color", "${result.color}");
$("#tbody tr").eq(1).children().eq(2).css("background-color", "${result.color}");
$("#tbody tr").eq(0).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(1).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(2).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(3).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(4).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(5).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(0).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '2' && result.subject.yoYil1 eq '화'}">
$("#tbody tr").eq(1).children().eq(2).css("background-color", "${result.color}");
$("#tbody tr").eq(2).children().eq(2).css("background-color", "${result.color}");
$("#tbody tr").eq(1).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(2).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(3).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(4).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(5).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(0).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '3' && result.subject.yoYil1 eq '화'}">
$("#tbody tr").eq(2).children().eq(2).css("background-color", "${result.color}");
$("#tbody tr").eq(3).children().eq(2).css("background-color", "${result.color}");
$("#tbody tr").eq(2).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(3).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(4).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(5).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(0).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '4' && result.subject.yoYil1 eq '화'}">
$("#tbody tr").eq(3).children().eq(2).css("background-color", "${result.color}");
$("#tbody tr").eq(4).children().eq(2).css("background-color", "${result.color}");
$("#tbody tr").eq(3).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(4).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(5).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(0).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '5' && result.subject.yoYil1 eq '화'}">
$("#tbody tr").eq(4).children().eq(2).css("background-color", "${result.color}");
$("#tbody tr").eq(5).children().eq(2).css("background-color", "${result.color}");
$("#tbody tr").eq(4).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(5).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(0).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '6' && result.subject.yoYil1 eq '화'}">
$("#tbody tr").eq(5).children().eq(2).css("background-color", "${result.color}");
$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
$("#tbody tr").eq(5).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(0).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '7' && result.subject.yoYil1 eq '화'}">
$("#tbody tr").eq(6).children().eq(2).css("background-color", "${result.color}");
$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
$("#tbody tr").eq(6).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(0).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '8' && result.subject.yoYil1 eq '화'}">
$("#tbody tr").eq(7).children().eq(2).css("background-color", "${result.color}");
$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
$("#tbody tr").eq(7).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '화'}">
		$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(2).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(0).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '9' && result.subject.yoYil1 eq '화'}">
$("#tbody tr").eq(8).children().eq(2).css("background-color", "${result.color}");
$("#tbody tr").eq(9).children().eq(2).css("background-color", "${result.color}");
$("#tbody tr").eq(8).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(9).children().eq(2).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(0).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '1' && result.subject.yoYil1 eq '수'}">
$("#tbody tr").eq(0).children().eq(3).css("background-color", "${result.color}");
$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
$("#tbody tr").eq(0).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '2' && result.subject.yoYil1 eq '수'}">
$("#tbody tr").eq(1).children().eq(3).css("background-color", "${result.color}");
$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
$("#tbody tr").eq(1).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '3' && result.subject.yoYil1 eq '수'}">
$("#tbody tr").eq(2).children().eq(3).css("background-color", "${result.color}");
$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
$("#tbody tr").eq(2).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '4' && result.subject.yoYil1 eq '수'}">
$("#tbody tr").eq(3).children().eq(3).css("background-color", "${result.color}");
$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
$("#tbody tr").eq(3).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '5' && result.subject.yoYil1 eq '수'}">
$("#tbody tr").eq(4).children().eq(3).css("background-color", "${result.color}");
$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
$("#tbody tr").eq(4).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '6' && result.subject.yoYil1 eq '수'}">
$("#tbody tr").eq(5).children().eq(3).css("background-color", "${result.color}");
$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
$("#tbody tr").eq(5).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '7' && result.subject.yoYil1 eq '수'}">
$("#tbody tr").eq(6).children().eq(3).css("background-color", "${result.color}");
$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
$("#tbody tr").eq(6).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '수'}">
		$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(3).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '8' && result.subject.yoYil1 eq '수'}">
$("#tbody tr").eq(7).children().eq(3).css("background-color", "${result.color}");
$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
$("#tbody tr").eq(7).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '9' && result.subject.yoYil1 eq '수'}">
$("#tbody tr").eq(8).children().eq(3).css("background-color", "${result.color}");
$("#tbody tr").eq(9).children().eq(3).css("background-color", "${result.color}");
$("#tbody tr").eq(8).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(9).children().eq(3).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '1' && result.subject.yoYil1 eq '목'}">
$("#tbody tr").eq(0).children().eq(4).css("background-color", "${result.color}");
$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
$("#tbody tr").eq(0).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '2' && result.subject.yoYil1 eq '목'}">
$("#tbody tr").eq(1).children().eq(4).css("background-color", "${result.color}");
$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
$("#tbody tr").eq(1).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '3' && result.subject.yoYil1 eq '목'}">
$("#tbody tr").eq(2).children().eq(4).css("background-color", "${result.color}");
$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
$("#tbody tr").eq(2).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '4' && result.subject.yoYil1 eq '목'}">
$("#tbody tr").eq(3).children().eq(4).css("background-color", "${result.color}");
$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
$("#tbody tr").eq(3).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '5' && result.subject.yoYil1 eq '목'}">
$("#tbody tr").eq(4).children().eq(4).css("background-color", "${result.color}");
$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
$("#tbody tr").eq(4).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '6' && result.subject.yoYil1 eq '목'}">
$("#tbody tr").eq(5).children().eq(4).css("background-color", "${result.color}");
$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
$("#tbody tr").eq(5).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '7' && result.subject.yoYil1 eq '목'}">
$("#tbody tr").eq(6).children().eq(4).css("background-color", "${result.color}");
$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
$("#tbody tr").eq(6).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '목'}">
		$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '8' && result.subject.yoYil1 eq '목'}">
$("#tbody tr").eq(7).children().eq(4).css("background-color", "${result.color}");
$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
$("#tbody tr").eq(7).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '9' && result.subject.yoYil1 eq '목'}">
$("#tbody tr").eq(8).children().eq(4).css("background-color", "${result.color}");
$("#tbody tr").eq(9).children().eq(4).css("background-color", "${result.color}");
$("#tbody tr").eq(8).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(9).children().eq(4).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '1' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '2' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '1' && result.subject.yoYil1 eq '금'}">
$("#tbody tr").eq(0).children().eq(5).css("background-color", "${result.color}");
$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
$("#tbody tr").eq(0).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '3' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '2' && result.subject.yoYil1 eq '금'}">
$("#tbody tr").eq(1).children().eq(5).css("background-color", "${result.color}");
$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
$("#tbody tr").eq(1).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '4' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '3' && result.subject.yoYil1 eq '금'}">
$("#tbody tr").eq(2).children().eq(5).css("background-color", "${result.color}");
$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
$("#tbody tr").eq(2).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '5' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '4' && result.subject.yoYil1 eq '금'}">
$("#tbody tr").eq(3).children().eq(5).css("background-color", "${result.color}");
$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
$("#tbody tr").eq(3).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '6' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '5' && result.subject.yoYil1 eq '금'}">
$("#tbody tr").eq(4).children().eq(5).css("background-color", "${result.color}");
$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
$("#tbody tr").eq(4).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '7' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '6' && result.subject.yoYil1 eq '금'}">
$("#tbody tr").eq(5).children().eq(5).css("background-color", "${result.color}");
$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
$("#tbody tr").eq(5).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '8' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
<c:when test="${result.subject.gyoShi1 eq '7' && result.subject.yoYil1 eq '금'}">
$("#tbody tr").eq(6).children().eq(5).css("background-color", "${result.color}");
$("#tbody tr").eq(7).children().eq(5).css("background-color", "${result.color}");
$("#tbody tr").eq(6).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
$("#tbody tr").eq(7).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
<c:choose>
	<c:when test="${result.subject.gyoShi2 eq '9' && result.subject.yoYil2 eq '금'}">
		$("#tbody tr").eq(8).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(9).children().eq(5).css("background-color", "${result.color}");
		$("#tbody tr").eq(8).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
		$("#tbody tr").eq(9).children().eq(5).html("${result.subject.subjectName}<br>${result.professor.usersName}<br><a href='javascript:popupOpen(\"${result.subject.subjectName}\", \"${result.building.buildingName}\", \"${result.room.roomName}\");'>${result.building.buildingName}&nbsp;${result.room.roomName}</a>");
	</c:when>
</c:choose>
</c:when>
				</c:choose>	
			</c:forEach>
});					

</script>
</head>
<body>
 <div class="container">
    
        <h3>나의 시간표 조회</h3><br>
        <div id="no-more-tables">
	           <table class="col-lg-11" border="2" style="border-color: black">
                <tbody>
            	<thead class="cf">
        			<tr>
        				<th width="90px"><input type="text" class="form-control" placeholder="교시/요일" disabled></th>
        				<th width="110px"><input type="text" class="form-control" placeholder="월" disabled></th>
        				<th width="110px"><input type="text" class="form-control" placeholder="화" disabled></th>
        				<th width="110px"><input type="text" class="form-control" placeholder="수" disabled></th>
        				<th width="110px"><input type="text" class="form-control" placeholder="목" disabled></th>
        				<th width="110px"><input type="text" class="form-control" placeholder="금" disabled></th>
        			</tr>
        		</thead>
				<tbody id="tbody">
					<tr>
        				<td style="text-align:center; width:60px; height:90px">1교시<br>9:00~9:50</td>
                        <td style="text-align:center" width="100px"></td>
                        <td style="text-align:center" width="100px"></td>
                        <td style="text-align:center" width="100px"></td>
                        <td style="text-align:center" width="100px"></td>
                        <td style="text-align:center" width="100px"></td>
                    
        			</tr>
        			<tr>
            			<td style="text-align:center; width:60px; height:90px">2교시<br>10:00~10:50</td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
        			</tr>
        			<tr>
            			<td style="text-align:center; width:60px; height:90px">3교시<br>11:00~11:50</td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
        			</tr>
        			<tr>
            			<td style="text-align:center; width:60px; height:90px">4교시<br>12:00~12:50</td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
        			</tr>
        			<tr>
            			<td style="text-align:center; width:60px; height:90px">5교시<br>01:00~01:50</td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
        			</tr>
					<tr>
            			<td style="text-align:center; width:60px; height:90px">6교시<br>02:00~02:50</td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
        			</tr>
					<tr>
            			<td style="text-align:center; width:60px; height:90px">7교시<br>03:00~03:50</td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
        			</tr>
					<tr>
            			<td style="text-align:center; width:60px; height:90px">8교시<br>04:00~04:50</td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
        			</tr>
					<tr>
            			<td style="text-align:center; width:60px; height:90px">9교시<br>05:00~05:50</td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
        			</tr>
					<tr>
            			<td style="text-align:center; width:60px; height:90px">10교시<br>06:00~06:50</td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
                        <td style="text-align:center"></td>
        			</tr>

        		</tbody>
        	</table>
        </div>
	</div><br>
	<center><button onclick="location.href='${initParam.rootPath}/index.do'" type="button" style="color:white; background-color:#ffb937; border:0px; border-radius:10px;height:40px;">메인화면으로 가기</button></center>
</body>
</html>