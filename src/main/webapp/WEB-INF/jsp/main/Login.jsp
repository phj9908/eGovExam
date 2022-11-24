<%--
  Class Name : EgovMainView.jsp 
  Description : 메인화면
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.08.31   JJY       경량환경 버전 생성
 
    author   : 실행환경개발팀 JJY
    since    : 2011.08.31 
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Language" content="ko" >
    <title>실습과제</title>
    <link href="<c:url value='/'/>css/common.css" rel="stylesheet" type="text/css" >
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

    <style>
        input, select {
            box-sizing: border-box;
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
        }

        .center{
            position: absolute;
            top: 20%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        .btn {
            margin-top: 5px;
            width: 600px;
            height: 35px;
            border: 1px solid;
            margin: 5px auto;
            display: block;
        }
    </style>
</head>
<body>
    <noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>
    <!-- 전체 레이어 시작 -->
    <input type="hidden" id="contextPath" value="<%=request.getContextPath()%>">

    <script type="text/javascript" src="<c:url value='/js/login.js' />"></script>

    <div class="login_page center">
        <h2 class="screen_out">로그인</h2>
            <fieldset>
                <legend class="screen_out">로그인 정보 입력폼</legend>
                <div style="margin: auto;">
                    <select id="intteList" name="intteList" style="width: 300px; height: 30px">
                        <option value="">학원을 선택해 주세요.</option>
                        <c:forEach var="intte" items="${intteList }" varStatus="status">
                            <option value="<c:out value="${intte.intteSeq }"/>"><c:out value="${intte.intteNm }"/></option>
                        </c:forEach>
                    </select>
                    <input type="text" id="userId" name="userId" placeholder="사용자 아이디" style="width: 300px; height: 30px">
                </div>
                <button type="button" class="btn" onclick="javascript:userLogin()">로그인</button>
            </fieldset>
    </div>
</body>
</html>

