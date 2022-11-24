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
    <script>
    function search(){
       var searchCnd = document.getElementById("searchCnd").value;
       var searchWrd = document.getElementById("searchWrd").value;
       var dataForm = {"searchCnd" : searchCnd, searchWrd:searchWrd}
       
       $.ajax({
           async: true,
           type: "GET",
url: ($("#contextPath").val() + "/search.do"),
           /* url: ("/search.do"), */
           data: dataForm,
           dataType: "json",
           success: function(res){
              $("#list").empty();
              
              
              var tempHtml = "";
                res.searchList.forEach(function(item, index) {
                    tempHtml += "<tr><td>" + (index+1) + "</td>" + 
                    "<td>" + item.clsNm + "</td>" + 
                    "<td>" + item.subjNm + "</td>" +
                    "<td>" + item.clsStDate + "~" + item.clsFnsDate + "</td>" +
                    "<td>" + item.useYn + "</td>" +
                    "<td>" + item.cretDt + "</td></tr>"
                 
               });

               $("#list").append(tempHtml);
           },
           error: function(XMLHttpRequest, textStatus, errorThrown){
               alert("통신 실패.")
            }
       });
   };

   function reset(){
      $("#searchCnd").val("0").prop("selected", true);
      var search = document.getElementById("searchWrd");
      search.value = null;
   }
    
    </script>
</head>
<body>
    <style>
        .center{
                position: absolute;
                top: 20%;
                left: 10%;
                transform: translate(5%, -50%);
        }
        .tableTop{ display: flex; justify-content: space-between; align-items: center; margin-bottom: 10px; }

        .tableTop .table_search{ display: flex; align-items: center; }
        .tableTop .table_search select{ width: 100px; height: 32px; font-size: 15px; letter-spacing: -0.6px; color: #010101; margin-left: 4px; }
        .tableTop .table_search input[type="text"]{ width: 200px; height: 32px; font-size: 15px; border: 1px solid #ccc; padding-left: 10px; }
        .tableTop .table_search input[type="text"]::placeholder{ font-size: 15px; letter-spacing: -0.6px; color: #909090; }
        .tableTop .table_search input.date{  background: #fff url(../../../images/dris/admin/ico_calendar.png) no-repeat 50%; background-position: calc(100% - 10px); background-size: 16px; margin-right: 4px;  }
        .tableTop .table_search button{ margin-left: 4px; }

        table.st01{ border: 1px solid #e6e6e6; }
        table.st01 thead > tr > th{ background-color: #f2f2f2; height: 36px; border-bottom: 1px solid #e1e1e1; border-right: 1px solid #e1e1e1; font-size: 13px; letter-spacing: -0.52px; }
        table.st01 thead > tr > td{ border-bottom: 1px solid #e1e1e1; text-align: center; }
        table.st01 tbody > tr > td{ height: 42px; border-bottom: 1px solid #e1e1e1; border-right: 1px solid #e1e1e1; font-size: 15px; text-align: center; padding: 0 8px; }
        table.st01 tbody > tr > td:last-child{ border-right: 0; }
        table.st01 tbody > tr > td a{ color: #3959c5; }
        table.st01 tbody > tr > th{ background-color: #f8f8f8; border-bottom: 1px solid #e1e1e1; border-right: 1px solid #e1e1e1; }
        table.st01 tbody > tr:last-child td{ border-bottom: 0; }
        table.st01 tfoot > tr > td{ height: 44px; font-size: 15px; text-align: center; border-top: 1px solid #e1e1e1; color: #010101; border-right: 1px solid #e1e1e1; }
        table.st01 tfoot > tr:last-child td:last-child{ border-right: 0; }
        table.st01 tfoot > tr > th{ height: 48px; background-color: #f0f0f0; border-right: 1px solid #e1e1e1; padding: 0 8px; }
        table.st01 tfoot > tr > th:last-child{ border-top: 1px solid #e1e1e1; }
        table.st01 tbody > tr > td .graph{ height: 14px; background: #81d4fa; }
        

        .btn09{ width: 120px; height: 32px; font-size: 14px; letter-spacing: -0.56px; display: inline-block; line-height: 32px; text-align: center; border-radius: 2px; }
        .btn_blue{ background-color: #3959c5; color: #fff; border: 1px solid #3959c5; }
        .btn_blue_line{ border: 1px solid #3959c5; color: #3959c5; }

        .btn01{ width: 60px; height: 32px; font-size: 14px; letter-spacing: -0.56px; display: inline-block; line-height: 32px; text-align: center; }
        .btn02{ width: 50px; height: 32px; font-size: 13px; letter-spacing: -0.52px; display: inline-block; line-height: 32px; text-align: center; }
        .btn_black{ background-color: #424242; color: #fff; border: 1px solid #424242; }
        .btn_grey{ background-color: #6e737f; color: #fff; border: 1px solid #6e737f; }
    </style>

    <noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>
    <!-- 전체 레이어 시작 -->
    <input type="hidden" id="contextPath" value="<%=request.getContextPath()%>">

    <div class="center">
        <div class="tableTop">
            <h2 style="margin: 0;">${intteNm} - 강의</h2>
            <div class="table_search" style="margin: 0;">
                <select class="W180" name="searchCnd" id="searchCnd">
                    <option value="0">전체</option>
                    <option value="1">강의명</option>
                    <option value="2">과목명</option>
                </select>
                <input type="text" id="searchWrd" name="searchWrd" placeholder="검색어를 입력하세요." onkeypress="pressSearchKey()" value="<c:out escapeXml="false" value="${searchVO.searchWrd}"/>">
                <!-- <input type="button" onclick="search()" class="btn01 btn_black">검색</input> -->
                <button  onclick="search()">검색</button>
                <button type="button" onclick="reset(); search();" type="button" class="btn02 btn_grey">초기화</button>
            </div>
        </div>
    
        <div class="table_area">
            <table class="st01">
                <colgroup>
                    <col width="3.85%">
                    <col>
                    <col width="8.88%">
                    <col width="18.88%">
                    <col width="8.88%">
                    <col width="8.88%">
                </colgroup>
                <thead>
                <tr>
                    <th>번호</th>
                    <th>강의명</th>
                    <th>과목명</th>
                    <th>강의기간</th>
                    <th>사용여부</th>
                    <th>등록일</th>
                </tr>
                </thead>
                <tbody id="list">
                <c:forEach var="list" items="${listvo}" varStatus="listvoStatus">
                    <tr>
                        <td>${listvoStatus.index + 1}</td>
                        <td>${list.clsNm}</td>
                        <td>${list.subjNm}</td>
                        <td>${list.clsStDate} ~ ${list.clsFnsDate}</td>
                        <td>${list.useYn}</td>
                        <td>${list.cretDt}</td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
    
            <div style="margin-top: 5px; float: right">
                <a href="<c:url value="/spt/equip/maint/write"/>" class="btn09 btn_blue">강의등록</a>
            </div>
            </div>
        </div>
</body>
</html>

