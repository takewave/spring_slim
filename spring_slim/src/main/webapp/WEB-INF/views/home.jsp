<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="title" value="나의 여행 블로그"/>
<c:if test="${not empty sessionScope.id  && sessionScope.grade=='A'}">
	<c:set var="title" value="관리자 페이지"/>
</c:if>

 <!DOCTYPE html>
<html>
<title>ㅁㅁㅁㅁㅁㅁㅁㅁㅁ</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<head>
    <meta charset="utf-8"/>
    <meta name="description" content="The Overflowing church website's main page" />
    <meta name="author" content="unikys@gmail.com" />
    <title>ㅇㅇ</title>
    <style>
    #topMenu {
            height: 30px;  /* 메인 메뉴의 높이 */
            width: 850px;  /* 메인 메뉴의 넓이 */
            align: center;
    }
    #topMenu ul {           /* 메인 메뉴 안의 ul을 설정함: 상위메뉴의 ul+하위 메뉴의 ul */
        list-style-type: none;  /* 메인 메뉴 안의 ul 내부의 목록 표시를 없애줌 */
        margin: 0px;            /* 메인 메뉴 안의 ul의 margin을 없앰 */
        padding: 0px;           /* 메인 메뉴 안의 ul의 padding을 없앰 */
    }
    #topMenu ul li {            /* 메인 메뉴 안에 ul 태그 안에 있는 li 태그의 스타일 적용(상위/하위메뉴 모두) */
        color: white;               /* 글씨 색을 흰색으로 설정 */
        background-color: #2d2d2d;  /* 배경 색을 RGB(2D2D2D)로 설정 */
        float: left;                /* 왼쪽으로 나열되도록 설정 */
        line-height: 30px;          /* 텍스트 한 줄의 높이를 30px로 설정 */
        vertical-align: middle;     /* 세로 정렬을 가운데로 설정 */
        text-align: center;         /* 텍스트를 가운데로 정렬 */
        position: relative;         /* 해당 li 태그 내부의 top/left 포지션 초기화 */
    }
    .menuLink, .submenuLink {           /* 상위 메뉴와 하위 메뉴의 a 태그에 공통으로 설정할 스타일 */
        text-decoration:none;               /* a 태그의 꾸밈 효과 제거 */
        display: block;                     /* a 태그의 클릭 범위를 넓힘 */
        width: 150px;                       /* 기본 넓이를 150px로 설정 */
        font-size: 12px;                    /* 폰트 사이즈를 12px로 설정 */
        font-weight: bold;                  /* 폰트를 굵게 설정 */
        font-family: "Trebuchet MS", Dotum; /* 기본 폰트를 영어/한글 순서대로 설정 */
    }
    .menuLink {     /* 상위 메뉴의 글씨색을 흰색으로 설정 */
        color: white;
    }
    .topMenuLi:hover .menuLink {    /* 상위 메뉴의 li에 마우스오버 되었을 때 스타일 설정 */
        color: red;                 /* 글씨 색 빨간색 */
        background-color: #4d4d4d;  /* 배경색을 밝은 회색으로 설정 */
    }
    .submenuLink {          /* 하위 메뉴의 a 태그 스타일 설정 */
        color: #2d2d2d;             /* 글씨 색을 RGB(2D2D2D)로 설정 */
        background-color: white;    /* 배경색을 흰색으로 설정 */
        border: solid 1px black;    /* 테두리를 설정 */
        margin-top: -1px;           /* 위 칸의 하단 테두리와 아래칸의 상단 테두리가 겹쳐지도록 설덩 */
    }
    .longLink {     /* 좀 더 긴 메뉴 스타일 설정 */
        width: 190px;   /* 넓이는 190px로 설정 */
    }
    .submenu {              /* 하위 메뉴 스타일 설정 */
        position: absolute;     /* html의 flow에 영향을 미치지 않게 absolute 설정 */
        height: 0px;            /* 초기 높이는 0px로 설정 */
        overflow: hidden;       /* 실 내용이 높이보다 커지면 해당 내용 감춤 */
        transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(기본) */
        -webkit-transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(구버전 크롬/사파라ㅣ) */
        -moz-transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(구버전 파폭) */
        -o-transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(구버전 오페라) */
    }
    .topMenuLi:hover .submenu { /* 상위 메뉴에 마우스 모버한 경우 그 안의 하위 메뉴 스타일 설정 */
        height: 93px;           /* 높이를 93px로 설정 */
    }
    .submenuLink:hover {        /* 하위 메뉴의 a 태그의 마우스 오버 스타일 설정 */
        color: red;                 /* 글씨색을 빨간색으로 설정 */
        background-color: #dddddd;  /* 배경을 RGB(DDDDDD)로 설정 */
    }
    </style>
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>



<div class="w3-light-grey w3-container w3-padding-64 w3-margin-bottom w3-center">
  <h1 class="w3-jumbo">ㅁㅁㅁㅁㅁ</h1> 
  <p>ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ</p>
</div>

<div id="topMenu" >
      <ul>
         <li class="topMenuLi">

                <a class="menuLink" href="http://unikys.tistory.com/category/Programming%20Lecture">뮤비홈</a>



                <ul class="submenu">


                    <li><a href="http://unikys.tistory.com/category/Programming%20Lecture/%EC%86%8D%EA%B9%8A%EC%9D%80%20%EC%9E%90%EB%B0%94%EC%8A%A4%ED%81%AC%EB%A6%BD%ED%8A%B8%20%EA%B0%95%EC%A2%8C" class="submenuLink longLink">최신뮤비</a></li>
                    <li><a href="http://unikys.tistory.com/category/Programming%20Lecture/%EB%B0%91%EB%B0%94%EB%8B%A5%EB%B6%80%ED%84%B0%20%ED%99%88%ED%8E%98%EC%9D%B4%EC%A7%80%20%EB%A7%8C%EB%93%A4%EA%B8%B0" class="submenuLink longLink">좋아요!영상</a></li>
                    <li><a href="http://unikys.tistory.com/category/Programming%20Lecture/Android%28%EC%95%88%EB%93%9C%EB%A1%9C%EC%9D%B4%EB%93%9C%29%20%EC%95%B1%20%EA%B0%9C%EB%B0%9C" class="submenuLink longLink">뮤비정보</a></li>
                </ul>
            </li>




         <li>|</li>
<div id="topMenu" >
      <ul>
         <li class="topMenuLi">

                <a class="menuLink" href="http://unikys.tistory.com/category/Programming%20Lecture">뮤직홈</a>



                <ul class="submenu">


                    <li><a href="http://unikys.tistory.com/category/Programming%20Lecture/%EC%86%8D%EA%B9%8A%EC%9D%80%20%EC%9E%90%EB%B0%94%EC%8A%A4%ED%81%AC%EB%A6%BD%ED%8A%B8%20%EA%B0%95%EC%A2%8C" class="submenuLink longLink">최신가요</a></li>
                    <li><a href="http://unikys.tistory.com/category/Programming%20Lecture/%EB%B0%91%EB%B0%94%EB%8B%A5%EB%B6%80%ED%84%B0%20%ED%99%88%ED%8E%98%EC%9D%B4%EC%A7%80%20%EB%A7%8C%EB%93%A4%EA%B8%B0" class="submenuLink longLink">장르별</a></li>
                    <li><a href="http://unikys.tistory.com/category/Programming%20Lecture/Android%28%EC%95%88%EB%93%9C%EB%A1%9C%EC%9D%B4%EB%93%9C%29%20%EC%95%B1%20%EA%B0%9C%EB%B0%9C" class="submenuLink longLink">뮤직</a></li>
                </ul>
            </li>






         <li>|</li>
            <li class="topMenuLi">
                <a class="menuLink" href="http://unikys.tistory.com/tag">TAG CLOUD</a>
                <ul class="submenu">
                    <li><a href="http://unikys.tistory.com/tag/%EC%9E%90%EB%B0%94%EC%8A%A4%ED%81%AC%EB%A6%BD%ED%8A%B8" class="submenuLink">자바스크립트</a></li>
                    <li><a href="http://unikys.tistory.com/tag/%EA%B0%95%EC%A2%8C" class="submenuLink">강좌</a></li>
                    <li><a href="http://unikys.tistory.com/tag/K100D" class="submenuLink">K100D</a></li>
                </ul>
            </li>
         <li>|</li>
            <li class="topMenuLi">
                <a class="menuLink" href="http://unikys.tistory.com/media">MEDIA LOG</a>
            </li>
         <li>|</li>
            <li class="topMenuLi">
                <a class="menuLink" href="http://unikys.tistory.com/location">LOCATION LOG</a>
            </li>
      </ul>
   </div>

<div class="w3-container w3-center w3-margin-bottom">
  <h3>Some of my Work</h3><br>
  <div class="w3-row-padding">
    <div class="w3-quarter">
      <p>Some text..</p>
      <img src="http://placehold.it/150x80?text=IMAGE" class="w3-image" style="width:100%" alt="Image">
    </div>
    <div class="w3-quarter">
      <p>Some text..</p>
      <img src="http://placehold.it/150x80?text=IMAGE" class="w3-image" style="width:100%" alt="Image">
    </div>
    <div class="w3-quarter">
      <p>Some text..</p>
      <img src="http://placehold.it/150x80?text=IMAGE" class="w3-image" style="width:100%" alt="Image">
    </div>
    <div class="w3-quarter">
      <p>Some text..</p>
      <img src="http://placehold.it/150x80?text=IMAGE" class="w3-image" style="width:100%" alt="Image">
    </div>
  </div>

  <div class="w3-row-padding">
    <div class="w3-quarter">
      <p>Some text..</p>
      <img src="http://placehold.it/150x80?text=IMAGE" class="w3-image" style="width:100%" alt="Image">
    </div>
    <div class="w3-quarter">
      <p>Some text..</p>
      <img src="http://placehold.it/150x80?text=IMAGE" class="w3-image" style="width:100%" alt="Image">
    </div>
    <div class="w3-quarter">
      <p>Some text..</p>
      <img src="http://placehold.it/150x80?text=IMAGE" class="w3-image" style="width:100%" alt="Image">
    </div>
    <div class="w3-quarter">
      <p>Some text..</p>
      <img src="http://placehold.it/150x80?text=IMAGE" class="w3-image" style="width:100%" alt="Image">
    </div>
  </div><br>
</div>

<footer class="w3-container w3-center w3-green">
  <h5>Footer</h5>
  <p>Footer information goes here</p>
</footer>
     
</body>
</html> 