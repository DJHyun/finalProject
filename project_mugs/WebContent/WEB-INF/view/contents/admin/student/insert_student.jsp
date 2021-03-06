<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
input{
   text-align:center;
   font-size: 15px;
}
table{
   width:100%;
}
td{
   border: 1px solid black;
   font-size: 15px;
}
select{
   width:150px;
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
.form-controler {
   color:black;
}
h3{
   font-family:굴림체;
}


</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/project_mugs/resource/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
   function check(){
      if($("#usersId").val() == "" || $("#usersId").val().trim() == 0 ){
         alert("학번을 입력하세요");
         return false;
      }else if($("#usersName").val() == "" || $("#usersName").val().trim() == 0 ){
         alert("이름을 입력하세요")
         return false;
      }else if($("#usersEngName").val() == "" || $("#usersEngName").val().trim() == 0){
         alert("영어 이름을 입력하세요")
         return false;
      }else if($("#usersRRN").val() == "" || $("#usersRRN").val().trim() == 0){
         alert("주민번호를 입력하세요")
         return false;
      }else if($("#usersEmail").val() == "" || $("#usersEmail").val().trim() == 0){
         alert("이메일을 입력하세요")
         return false;
      }else if($("#usersPhoneNum").val() == "" || $("#usersPhoneNum").val().trim() == 0){
         alert("집 전화번호를 입력하세요")
         return false;
      }else if($("#usersCellNum").val() == "" || $("#usersCellNum").val().trim() == 0){
         alert("핸드폰 번호를 입력하세요")
         return false;
      }else if($("#usersNational").val() == "국적" ){
         alert("국적를 입력하세요")
         return false;
      }else if($("#usersCurrentAddr").val() == "" || $("#usersCurrentAddr").val().trim() == 0){
         alert("현 거주지 주소를 입력하세요")
         return false;
      }else if($("#usersBornAddr").val() == "" || $("#usersBornAddr").val().trim() == 0){
         alert("본적지 주소를 입력하세요")
         return false;
      }else if($("#stuCourse").val() == "" || $("#stuCourse").val().trim() == 0){
         alert("과정 구분를 입력하세요")
         return false;
      }else if(!$("#stuAdmissionDate").val()){
         alert("입학 일자를 입력하세요")
         return false;
      }else if(!$("#stuRegisterState").val() || $("#stuRegisterState").val().trim() == 0){
         alert("학적 구분을 입력하세요")
         return false;
      }else if(!$("#stuStudentState").val() || $("#stuStudentState").val().trim() == 0){
         alert("학생 구분을 입력하세요")
         return false;
      }else if(!$("#stuGrade").val() || $("#stuGrade").val().trim() == 0){
         alert("학년을 입력하세요")
         return false;
      }else if(!$("#stuEarlyGraduation").val() || $("#stuGraduationExam").val().trim() == 0){
         alert("조기 졸업 대상여부를 입력하세요")
         return false;
      }else if(!$("#stuSemester").val() || $("#stuGraduationExam").val().trim() == 0){
         alert("학기를 입력하세요")
         return false;
      }else if($("#majorId").val() == "학과 선택"){
         alert("소속 학과를 입력하세요")
         return false;
      }else if($("#majorDualId").val() == "학과 선택"){
         alert("복수 전공를 입력하세요, 없을 경우 없음을 선택해주세요")
         return false;
      }else if($("#majorMinorId").val() == "학과 선택"){
         alert("복수 전공를 입력하세요, 없을 경우 없음을 선택해주세요")
         return false;
      }else{
         return confirm("등록하시겠습니까 ?")
      }
   };
</script>
</head>
<body>
<h3>학생 등록</h3>
<br>
<c:if test="${requestScope.error != null}">
   <script type="text/javascript">
      alert("학번이 중복되었습니다");
   </script>
</c:if>
	<form id="insertForm" action="${initParam.rootPath }/admin/insertStudentController.do" method="post" onsubmit="return check()">
	<ul><li><h4>학생 기본 정보</h4></li></ul>
	<table id="infoStudent" border="2">
		<colgroup>
			<col width="20%">
			<col width="20%">
			<col width="60%">
		</colgroup>
		<thead>
	   		<tr>
	   			<td rowspan="4" style="height: 34px;font-size: 15px" align="center">사진</td>
	   			<th align="center" ><input type="text" style="height: 40px" class="form-control" placeholder="학번" disabled></th>
	   			<td align="center" style="height: 34px;font-size: 15px"><input name="usersId" id="usersId" value="${param.usersId }" style="border: 0"/></td>
	   		</tr>
	   		<tr>
				<th align="center"><input type="text" style="height: 40px"class="form-control" placeholder="이름" disabled></th>
				<td align="center" style="height: 34px;font-size: 15px" ><input type="text" name="usersName" id="usersName" value="${param.usersName }"style="border: 0"/></td>
			</tr>
			<tr>
				<th align="center"><input type="text" style="height: 40px" class="form-control" placeholder="영문 이름" disabled></th>
				<td align="center" style="height: 34px;font-size: 15px"><input type="text" name="usersEngName" id="usersEngName" value="${param.usersEngName }"style="border: 0"/></td>
			</tr>
			<tr>
				<th align="center"><input type="text" style="height: 40px" class="form-control" placeholder="주민 번호" disabled></th>
				<td align="center" style="height: 34px;font-size: 15px"><input type="text" name="usersRRN" id="usersRRN" value="${param.usersRRN }"style="border: 0"/></td>
			</tr>
		</thead>
		</table>
	<ul><li><h4>학생 학적 정보</h4></li></ul>
	<table id="infoStudent" border="2">
		<colgroup>
			<col width="20%">
			<col width="30%">
			<col width="20%">
			<col width="30%">
		</colgroup>
		<thead id="thead">
	   		<tr class="filters">
	   			<th align="center" ><input type="text" style="height: 40px" class="form-control" placeholder="과정 구분" disabled></th>
	   			<td align="center" style="height: 34px;font-size: 15px"><input type="text" name="stuCourse" id="stuCourse" value="${param.stuCourse }"style="border: 0"/></td>
	   			<th align="center" ><input type="text" style="height: 40px" class="form-control" placeholder="병영 구분" disabled></th>
	   			<td align="center" style="height: 34px;font-size: 15px"><input type="text" name="stuArmy" id="stuArmy" value="${param.stuArmy }"style="border: 0"/></td>
	   		</tr>
	   		<tr class="filters">
	   			<th align="center" ><input type="text" style="height: 40px" class="form-control" placeholder="학년" disabled></th>
	   			<td align="center" style="height: 34px;font-size: 15px"><input type="number" name="stuGrade" id="stuGrade" value="${param.stuGrade }"style="border: 0"/></td>
	   			<th align="center"><input type="text" style="height: 40px" class="form-control" placeholder="학기" disabled></th>
	   			<td align="center" style="height: 34px;font-size: 15px"><input type="text" name="stuSemester" id="stuSemester" value="${param.stuSemester }"style="border: 0"/></td>
	   		</tr>
	   		<tr class="filters">
	   			<th align="center"><input type="text" style="height: 40px" class="form-control" placeholder="학적 구분" disabled></th>
	   			<td align="center" style="height: 34px;font-size: 15px"><input type="text" name="stuRegisterState" id="stuRegisterState" value="${param.stuRegisterState }"style="border: 0"/></td>
				<th align="center"><input type="text" style="height: 40px" class="form-control" placeholder="학생 구분" disabled></th>
				<td align="center" style="height: 34px;font-size: 15px"><input type="text" name="stuStudentState" id="stuStudentState" value="${param.stuStudentState }"style="border: 0"/></td>
			</tr>
			<tr class="filters">
				<th align="center"><input type="text" style="height: 40px" class="form-control" placeholder="졸업시험 패스여부" disabled></th>
				<td align="center" style="height: 34px;font-size: 15px"><input type="text" name="stuGraduationExam" id="stuGraduationExam" value="${param.stuGraduationExam }"style="border: 0"/></td>
				<th align="center"><input type="text" style="height: 40px" class="form-control" placeholder="조기졸업 대상 여부" disabled></th>
				<td align="center" style="height: 34px;font-size: 15px"><input type="text" name="stuEarlyGraduation" id="stuEarlyGraduation" value="${param.stuEarlyGraduation }"style="border: 0"/></td>
			</tr>
			<tr class="filters">
				<th align="center"><input type="text" style="height: 40px" class="form-control" placeholder="입학 일자" disabled></th>
	   			<td align="center" style="height: 34px;font-size: 15px"><input type="date" name="stuAdmissionDate" id="stuAdmissionDate" value="${param.stuAdmissionDate }"/></td>
				<th align="center"><input type="text" style="height: 40px" class="form-control" placeholder="소속 학과" disabled></th>
				<td align="center" style="height: 34px;font-size: 15px"><select name="majorId" id="majorId">
										<option>학과 선택</option>
											<c:forEach var="list" items="${requestScope.major }">
												<c:choose>
													<c:when test="${list.majorId == param.majorId }">
														<option value=${list.majorId } selected>${list.majorName }</option>
													</c:when>
													<c:otherwise>
														<option value=${list.majorId }>${list.majorName }</option>
													</c:otherwise>
												</c:choose>
											</c:forEach>
					    		   </select></td>
			</tr>
			<tr class="filters">
				<th align="center"><input type="text" style="height: 40px" class="form-control" placeholder="복수 전공" disabled></th>
				<td align="center" style="height: 34px;font-size: 15px"><select name="majorDualId" id="majorDualId">
										<option>학과 선택</option>
										<c:choose>
											<c:when test="${param.majorDualId == 0 }">
												<option value="0" selected>없음</option>
											</c:when>
											<c:otherwise>
												<option value="0">없음</option>
											</c:otherwise>
										</c:choose>
											<c:forEach var="list" items="${requestScope.majorDual }">
											<c:choose>
												<c:when test="${list.majorId == param.majorDaulId }">
													<option value=${list.majorId } selected>${list.majorName }</option>
												</c:when>
												<c:otherwise>
													<option value=${list.majorId }>${list.majorName }</option>
												</c:otherwise>
											</c:choose>
											</c:forEach>
									</select></td>
				<th align="center"><input type="text" style="height: 40px" class="form-control" placeholder="부전공" disabled></th>
				<td align="center" style="height: 34px;font-size: 15px"><select name="majorMinorId" id="majorMinorId">
										<option>학과 선택</option>
										<c:choose>
											<c:when test="${param.majorMinorId == 0 }">
												<option value="0" selected>없음</option>
											</c:when>
											<c:otherwise>
												<option value="0">없음</option>
											</c:otherwise>
										</c:choose>
											<c:forEach var="list" items="${requestScope.majorMinor }">
											<c:choose>
												<c:when test="${list.majorId == param.majorMinorId }">
													<option value=${list.majorId } selected>${list.majorName }</option>
												</c:when>
												<c:otherwise>
													<option value=${list.majorId }>${list.majorName }</option>
												</c:otherwise>
											</c:choose>
											</c:forEach>
									</select> <br></td>
			</tr>
		</thead>
		</table>
		<ul><li><h4>학생 카드 정보</h4></li></ul>
		<table id="infoStudent" border="2">
			<colgroup>
				<col width="15%">
				<col width="15%">
				<col width="15%">
				<col width="15%">
				<col width="15%">
				<col width="15%">
			</colgroup>
			<thead id="thead">
				<tr class="filters">
					<th align="center" ><input type="text" style="height: 40px" class="form-control" placeholder="본적지 주소" disabled></th>
					<td align="center" style="height: 34px;font-size: 15px" colspan="5"><input type="text" style="width: 500px;border:0" name="usersBornAddr" id="usersBornAddr" value="${param.usersBornAddr }" style="border: 0"/></td>
				</tr>
				<tr class="filters">
					<th align="center"><input type="text" style="height: 40px" class="form-control" placeholder="현 거주지 주소" disabled></th>
					<td align="center" style="height: 34px;font-size: 15px" colspan="5"><input type="text" style="width: 500px;border:0" name="usersCurrentAddr" id="usersCurrentAddr" value="${param.usersCurrentAddr }" style=/></td>
				</tr>
				<tr class="filters">
					<th align="center"><input type="text" style="height: 40px" class="form-control" placeholder="국적" disabled></th>
					<td align="center" style="height: 34px;font-size: 15px"><select name="usersNational" id="usersNational">
										<option>국적</option>
										<c:choose>
											<c:when test="${param.usersNational == '한국' }">
												<option selected>한국</option>
											</c:when>
											<c:otherwise>
												<option>한국</option>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${param.usersNational == '중국' }">
												<option selected>중국</option>
											</c:when>
											<c:otherwise>
												<option>중국</option>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${param.usersNational == '일본' }">
												<option selected>일본</option>
											</c:when>
											<c:otherwise>
												<option>일본</option>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${param.usersNational == '북한' }">
												<option selected>북한</option>
											</c:when>
											<c:otherwise>
												<option>북한</option>
											</c:otherwise>
										</c:choose>
										</select></td>
	   				<th align="center"><input type="text"  style="height: 40px"class="form-control" placeholder="집 전화번호" disabled></th>
	   				<td align="center" style="height: 34px;font-size: 15px"><input type="text" name="usersPhoneNum" id="usersPhoneNum" value="${param.usersPhoneNum }"style="border: 0"/></td>
					<th align="center"><input type="text"  style="height: 40px"class="form-control" placeholder="핸드폰 번호" disabled></th>
					<td align="center" style="height: 34px;font-size: 15px"><input type="text" name="usersCellNum" id="usersCellNum" value="${param.usersCellNum }"style="border: 0"/></td>
				</tr>
				<tr class="filters">
					<th align="center"><input type="text"  style="height: 40px"class="form-control" placeholder="이메일" disabled></th>
					<td align="center" style="height: 34px;font-size: 15px" colspan="5"><input type="email" style="width: 500px;border:0" name="usersEmail" id="usersEmail" value="${param.usersEmail }"style="border: 0"/></td>
				</tr>
			</thead>
	</table>
	<input type="hidden" name="usersEnable" id="usersEnable" value="1"/>
	<br>
	<center><input type="submit" id="submit" value="등록"></center>
			<sec:csrfInput/>
	</form><br>
	<center><button onclick="location.href='${initParam.rootPath}/index.do'" type="button" style="color:white; background-color:#ffb937; border:0px; border-radius:10px;height:40px;">메인화면으로 가기</button></center>
</body>