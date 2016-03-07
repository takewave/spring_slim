<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<style> 
.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 6px 12px;
    margin: 8px 0;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    border-radius: 4px;
    cursor: pointer;
}

.button1 {
    background-color: white; 
    color: black; 
    border: 2px solid #F44336;
}

.button1:hover {
    background-color: #F44336;
    color: white;
}


input[type=text] {
    width: 30%;
    padding: 8px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 2px solid grey;
    border-radius: 4px;
}

input[type=text1] {
    width: 54%;
    padding: 8px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 2px solid grey;
    border-radius: 4px;
}
input[type=password] {
    width: 30%;
    padding: 8px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 2px solid grey;
    border-radius: 4px;
}
select {
    width: 50%;
    padding: 8px 20px;
    border: 2px solid #ddd;
    border-radius: 4px;
    background-color: #f1f1f1;
}

table, th, td {
    border: 1px solid #ddd;
    border-collapse: collapse;

}
th, td {
    padding: 5px;
    text-align: center;  
    background-color: ;
    
    
}
.td1 {
  text-align: left;
}

</style>
<link href="../css/style.css1" rel="Stylesheet" type="text/css">
<script>
<script type="text/javascript"> 
// 입력 값 검사후 서버로 전송 
function inputCheck(){ 
  var f = document.frm; // <FORM>태그 객체 
   
  if(f.id.value == ""){ 
    alert("아이디를 입력해 주세요."); 
    f.id.focus(); // 폼이름.input 태그명.커서 셋팅    

    return;       // 프로그램 종료, 값을 돌려줌 
  } 
  if(f.passwd.value == ""){ 
    alert("비밀번호를 입력해 주세요."); 
    f.passwd.focus(); 
    return; 
  } 
  if(f.repasswd.value == ""){ 
    alert("비밀번호를 확인해 주세요"); 
    f.repasswd.focus(); 
    return; 
  } 
   
  //비밀번호가 일치하는지 검사 
  if(f.passwd.value != f.repasswd.value){ 
    alert("비밀번호가 일치하지 않습니다. 다시 입력해 주세요."); 
    f.passwd.focus(); 
    return; 
  } 
   
  if(f.mname.value == ""){ 
    alert("이름을 입력해 주세요."); 
    f.mname.focus(); 
    return; 
  } 

  if(f.email.value == ""){ 
    alert("이메일을 입력해 주세요."); 
    f.email.focus(); 
    return; 
  } 

  if(f.job.value == "0"){ 
    alert("직업을 선택해 주세요."); 
    f.job.focus(); 
    return; 
  } 
  // Form onsubmit 이벤트일경우 
  // return false; 
   
  f.submit(); 
} 

// 중복 아이디를 검사합니다. 
function idCheck(id){ 
  if(id == ""){ 
    window.alert("아이디를 입력해 주세요."); 
    f.id.focus(); // 커서 이동 
  }else{ 
    url="./idCheck?id=" + id;  // GET 
    wr = window.open(url,"아이디검색","width=500,height=400"); 
    wr.moveTo((window.screen.width-500)/2, (window.screen.height-400)/2); // x, y
  } 
} 

//중복 이메일을 검사합니다. 
function emailCheck(email){ 
  if(email == ""){ 
    window.alert("이메일을 입력해 주세요."); 
    f.email.focus(); 
  }else{ 
    url="./emailCheck?email=" + email;  // GET 
    wr = window.open(url,"이메일검색","width=500,height=400"); 
    wr.moveTo((window.screen.width-500)/2, (window.screen.height - 400)/2);// x, y 
  } 
} 

// 우편번호 검색 
function zipCheck(){ 
  url="./zipCheck"; 
  wr = window.open(url,"우편번호 검색","width=600 ,height=650"); 
  wr.moveTo((window.screen.width-550)/2, (window.screen.height - 450)/2);// x, y 
} 
</script> 

</head>
<body>

<p align="center">회원가입</p>

<FORM name='frm' 
      method='POST' 
      action='./create'
      enctype='multipart/form-data'
      onsubmit="return inputCheck()">
<table style="width:50%">
 
  <tr>
    <th>아이디</th>
    <td class="td1"><input type="text" id="fname" name="id" placeholder="아이디">
 <button class="button button1" value="ID중복확인 onclick="idCheck(document.frm.id.value)"/> ID중복확인</button><br></td>
  </tr>
  <tr>
    <th>비밀번호</th>
    <td class="td1"><input type="password" id="fname" name="id" placeholder="비밀번호"></td>
  </tr>
<tr>
    <th>비밀번호 확인</th>
    <td class="td1"><input type="password" id="fname" name="id" placeholder="비밀번호 확인"></td>
  </tr>
<tr>
    <th>이름</th>
    <td class="td1"><input type="text" id="fname" name="id" placeholder="이름"></td>
  </tr>
<tr>
    <th>이메일</th>
    <td class="td1"><input type="text" id="fname" name="id" placeholder="이메일"></td>
  </tr>
<tr>
    <th>우편번호</th>
    <td class="td1" >
      	<input type="text1" id="sample6_postcode" name="zipcode" placeholder="우편번호">
		<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
  </tr>
<tr>
    <th>주소</th>
    <td class="td1" >
    <input type="text1" id="sample6_address" placeholder="주소" name="address1"  size="45"><br>
	<input type="text" id="sample6_address2" placeholder="상세주소" name="address2" size="45">	
    </td>
  </tr>
  <tr>
    <th>직업</th>
    <td class="td1"><select id="job" name="job"> 
    <option value="0">선택하세요</option>
    <option value="officeworker">회사원</option>
    <option value="programer">전산관련직</option>
    <option value="programer">건설업</option>
    <option value="programer">축산업</option>
    <option value="programer">공무원</option></td>

  </select>
  </tr>
</table>
<DIV class='bottom'>
    <button class="button button1" value='회원가입'> 가입</button>
    <button class="button button1" value='취소'> 취소</button>
  </DIV>
</FORM>

<footer class="w3-container w3-center w3-green" align="center">
  <h5>Footer</h5>
  <p>Footer information goes here</p>
</footer>
</body>
</html>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="//apis.daum.net/maps/maps3.js?apikey=1363ce1a2d9c189eb6ecaa7a10d15344&libraries=services"></script>
<script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
            level: 5 // 지도의 확대 레벨
        };
 
    //지도를 미리 생성
    var map = new daum.maps.Map(mapContainer, mapOption);
    //주소-좌표 변환 객체를 생성	
    var geocoder = new daum.maps.services.Geocoder();
    //마커를 미리 생성
    var marker = new daum.maps.Marker({
        position: new daum.maps.LatLng(37.537187, 127.005476),
        map: map
    });
 
    function sample5_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = data.address; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수
 
                // 기본 주소가 도로명 타입일때 조합한다.
                if(data.addressType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }
 
      
                // 주소로 좌표를 검색
                geocoder.addr2coord(data.address, function(status, result) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === daum.maps.services.Status.OK) {
                        // 해당 주소에 대한 좌표를 받아서
                        var coords = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng);
                        // 지도를 보여준다.
                        mapContainer.style.display = "block";
                        map.relayout();
                        // 지도 중심을 변경한다.
                        map.setCenter(coords);
                        // 마커를 결과값으로 받은 위치로 옮긴다.
                        marker.setPosition(coords)
                    }
                });
               
                // 우편번호 정보를 해당 필드에 넣는다.
                document.getElementById("sample5_postcode").value = data.zonecode;
                // 주소 정보를 해당 필드에 넣는다.
                document.getElementById("sample5_address").value = fullAddr;
                // 상세주소 필드에 focus 넣는다.
                document.getElementById("sample5_address2").focus();
 
            }
        }).open();
    }
</script> 