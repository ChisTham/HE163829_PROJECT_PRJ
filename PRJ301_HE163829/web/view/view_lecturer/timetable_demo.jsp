<%-- 
    Document   : timtable_demo
    Created on : Oct 17, 2022, 12:45:44 PM
    Author     : win
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="helper" class="util.DateTimeHelper"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Time Table</title>
        <style>
            .container{
                margin-left: 180px;
                margin-right: 180px;
                font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
                font-weight: normal;
                font-size: 13px;

            }
            .header1{
                display: flex;
                justify-content: space-between;
                margin-bottom: 30px;
            }
            #head{
                font-weight: normal;
            }
            .header1 strong{
                font-size: 14px;

            }
            .header2{
                display: flex;
                justify-content: space-between;
                background-color: #F3F3F3;
                padding-bottom: 10px;
                padding-top: 10px;
            }
            #homee{
                margin-left: 20px;
            }
            #homee a{
                text-decoration: none;
            }
            .choose{
                margin-right: 20px;
                font-size: 11px;
                font-weight: 700;
            }
            .choose a {
                background-color: #0fcc45;
                padding: 3px;
                border-radius: 2px;
                text-decoration: none;
                color: white;
                font-weight: bold;
            }

            .choose span {
                background-color: #0fcc45;
                padding: 3px;
                border-radius: 2px;
                text-decoration: none;
                color: white;
                font-weight: bold;
            }
            .nd{
                font-size: 14px;
            }
            .nd h2{
                font-weight: normal;
                font-size: 25px;
                padding-left: 20px;
            }
            .content1 h2{
                margin-top: 50px;
                font-size: 30px;
            }
            .timetable {
                font-size: 14px;
                width: 100%;
            }
            .date{
                text-indent: initial;
            }
            .date tr{
                height: 23px;
                background-color: #6b90da;
                text-align: left;
            }
            .date th{
                font-weight: normal;
            }

            .gsub{
                color: #2A7BC0;
            }

            tbody td{
                box-sizing: border-box;
                border-bottom: 1px solid #f0f0f0;
                background-color: #fff;
                /*width: 13.5%;*/
            }
            #materials{
                background-color: #f0ad4e;
                color: white;
                font-size: 75%;
                border-radius: 0.25em;
                text-align: center;
                font-weight: 700;
                padding: 0.2em 0.6em 0.3em;
                text-decoration: none;

            }
            #meet{
                background-color: #777;
                font-weight: 700;
                font-size: 75%;
                border-radius: 0.25em;
                padding: 0.2em 0.6em 0.3em;
                color: white;
                text-decoration: none;
            }
            #sub{
                text-decoration: none;
                color: cornflowerblue;
            }
            #time{
                background-color: #5cb85c;
                display: inline;
                padding: 0.2em 0.6em 0.3em;
                font-size: 75%;
                font-weight: 700;
                line-height: 1;
                color: #fff;
                text-align: center;
                white-space: nowrap;
                vertical-align: baseline;
                border-radius: 0.25em;
            }
            .last{
                font-size: 13px;
                font-weight: 100;
            }
            #last2{
                font-size: 13px;
                font-weight: 100;
            }
            #last2 a {
                color: #6b90da;
                text-decoration: none;

            }
            #last3{
                font-size: 13px;
                font-weight: 100;
            }
            #last3 p a {
                color: #6b90da;
                text-decoration: none;
            }
            .option{
                margin-left: auto;
                margin-right: auto;
            }
            .roomm{
                padding: 1px;
                margin-bottom: 0px;
                margin-top: 0px;

            }
            .format{
                text-align: center;
            }
            .datetime{
                text-align: center;
            }
            .slot{
                background-color: #32CD32;
                width: 70px;
                color: white;
                font-size: 10px;
                text-align: center;
                border-radius: 5px;
                margin-bottom: 5px;
                padding-bottom: 0.5px;
            }

        </style>

    </head>
    <body>
        <div class="container"> 
            <div class="header1">
                <div id="head">
                    <h1><span id="head">FPT University Academic Portal ${OnlineUsers} </span></h1>
                </div>

            </div>
            <div>
                <tr>
                <div class="nd">
                    <h2>Lecturer of week
                    </h2>

                </div>

                <div>
                    <form action="timetable" method="GET" class="format">
                        <input type="hidden" name="lid" value="${sessionScope.account.lid}"/> 
                        From:
                        <input type="date" name="from" value="${requestScope.from}"/> 
                        To:
                        <input type="date" name="to" value="${requestScope.to}"/>
                        <input type="submit" value="View"/> 
                    </form>
                </div>

                <table class="timetable">
                    <thead class="date">
                    <th  rowspan="2">

                        <c:forEach items="${requestScope.dates}" var="d">
                        <td class="datetime">${helper.getDayNameofWeek(d)} <br/> ${d}</td>
                        </c:forEach>
                    </th>
                    </thead>
                    <tbody>
                        <c:forEach items="${requestScope.slots}" var="slot">
                            <tr>
                                <td>
                                    <p>  Slot ${slot.id}</p>
                                </td>
                                <c:forEach items="${requestScope.dates}" var="d">
                                    <td>
                                        <c:forEach items="${requestScope.sessions}" var="ses">
                                            <c:if test="${helper.compare(ses.date,d) eq 0 and (ses.timeslot.id eq slot.id)}">

                                                <a class="gsub" style="text-decoration: none" href="statistics?gid=${ses.group.id}&lid=${ses.lecturer.id}&subid=${ses.group.subject.id}">
                                                    ${ses.group.name}-${ses.group.subject.name}
                                                </a>
                                                <p class="roomm"> ${ses.room.name} </p>
                                                <c:choose>
                                                    <c:when test="${ses.attandated}">
                                                        <p class="roomm" style="color: green">(attended)</p>
                                                    </c:when> 
                                                    <c:when test="${ses.attandated == 'false'}">
                                                        <p class="roomm" style="color: red">(Not Yet)</p>
                                                    </c:when> 
                                                    <c:otherwise>
                                                        <p class="roomm" style="color: red">(fucking shit)</p>
                                                    </c:otherwise>
                                                </c:choose>
                                                <a href="take_attandance?id=${ses.id}">
                                                    <c:choose>
                                                        <c:when test="${ses.attandated}">
                                                            <p class="roomm" style="color: green">Edit</p>
                                                        </c:when> 
                                                        <c:when test="${ses.attandated == 'false'}">
                                                            <p class="roomm" style="color: red">Take</p>

                                                        </c:when> 
                                                    </c:choose>
                                                </a>
                                                <c:if test="${!ses.attandated}">
                                                    <div class="slot">
                                                        ${slot.description}
                                                    </div>   
                                                </c:if> 

                                            </c:if>  
                                        </c:forEach>
                                    </td>
                                </c:forEach>
                            </tr>
                        </c:forEach>

                    </tbody>
            </div>
        </div>      

    </body>
</html>
