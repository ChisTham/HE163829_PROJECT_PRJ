<%-- 
    Document   : timetable
    Created on : Oct 13, 2022, 7:25:42 PM
    Author     : win
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="X-UA-Compatible" content="IE=Edge" /><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" /><title>
	TimeTable
</title>

    <style type="text/css">
        .style1 {
            font-weight: bold;
        }
    </style>

</head>

<body>
    <div class="container">
        
        <form action="" method="post">
           MSSV  <input name="mssv" type="text" />
             
        </form>
        <br/>
        <div>    
                    <table>
                        <tr style="border-bottom: 0 none">
                            <td>
                                <div>
                                                               
    <style>
        div.online-indicator {
            display: inline-block;
            width: 15px;
            height: 15px;
            margin-right: 5px;
  
            background-color: #0fcc45;
            border-radius: 50%;
  
            position: relative;
        }
        span.blink {
            display: block;
            width: 15px;
            height: 15px;
  
            background-color: #0fcc45;
            opacity: 0.7;
            border-radius: 50%;
  
            animation: blink 1s linear infinite;
        }

        h3.online-text {
            display: inline;
  
            font-family: 'Rubik', sans-serif;
            font-weight: 400;
            text-shadow: 0px 3px 6px rgba(150, 150, 150, 0.2);
  
            position: relative;
            cursor: pointer;
        }
        
    </style>
    
    <table>
        <thead>
            <tr>

                <th rowspan="2">
                    <span class="auto-style1"><strong>Year</strong></span>
                    <select>
	<option value="2019">2019</option>
	<option value="2020">2020</option>
	<option value="2021">2021</option>
	<option selected="selected" value="2022">2022</option>
	<option value="2023">2023</option>

</select>
                    <br />
                    Week
                    <select name="ctl00$mainContent$drpSelectWeek" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$mainContent$drpSelectWeek\&#39;,\&#39;\&#39;)&#39;, 0)" id="ctl00_mainContent_drpSelectWeek">
	<option value="1">03/01 To 09/01</option>
	<option value="2">10/01 To 16/01</option>
	<option value="3">17/01 To 23/01</option>
	<option value="4">24/01 To 30/01</option>
	<option value="5">31/01 To 06/02</option>
	<option value="6">07/02 To 13/02</option>
	<option value="7">14/02 To 20/02</option>
	<option value="8">21/02 To 27/02</option>
	<option value="9">28/02 To 06/03</option>
	<option value="10">07/03 To 13/03</option>
	<option value="11">14/03 To 20/03</option>
	<option value="12">21/03 To 27/03</option>
	<option value="13">28/03 To 03/04</option>
	<option value="14">04/04 To 10/04</option>
	<option value="15">11/04 To 17/04</option>
	<option value="16">18/04 To 24/04</option>
	<option value="17">25/04 To 01/05</option>
	<option value="18">02/05 To 08/05</option>
	<option value="19">09/05 To 15/05</option>
	<option value="20">16/05 To 22/05</option>
	<option value="21">23/05 To 29/05</option>
	<option value="22">30/05 To 05/06</option>
	<option value="23">06/06 To 12/06</option>
	<option value="24">13/06 To 19/06</option>
	<option value="25">20/06 To 26/06</option>
	<option value="26">27/06 To 03/07</option>
	<option value="27">04/07 To 10/07</option>
	<option value="28">11/07 To 17/07</option>
	<option value="29">18/07 To 24/07</option>
	<option value="30">25/07 To 31/07</option>
	<option value="31">01/08 To 07/08</option>
	<option value="32">08/08 To 14/08</option>
	<option value="33">15/08 To 21/08</option>
	<option value="34">22/08 To 28/08</option>
	<option value="35">29/08 To 04/09</option>
	<option value="36">05/09 To 11/09</option>
	<option value="37">12/09 To 18/09</option>
	<option value="38">19/09 To 25/09</option>
	<option value="39">26/09 To 02/10</option>
	<option value="40">03/10 To 09/10</option>
	<option selected="selected" value="41">10/10 To 16/10</option>
	<option value="42">17/10 To 23/10</option>
	<option value="43">24/10 To 30/10</option>
	<option value="44">31/10 To 06/11</option>
	<option value="45">07/11 To 13/11</option>
	<option value="46">14/11 To 20/11</option>
	<option value="47">21/11 To 27/11</option>
	<option value="48">28/11 To 04/12</option>
	<option value="49">05/12 To 11/12</option>
	<option value="50">12/12 To 18/12</option>
	<option value="51">19/12 To 25/12</option>
	<option value="52">26/12 To 01/01</option>

</select>
                </th>

                <div><th  align='center'>Mon</th><th  align='center'>Tue</th><th  align='center'>Wed</th><th  align='center'>Thu</th><th  align='center'>Fri</th><th  align='center'>Sat</th><th  align='center'>Sun</th></div>
            </tr>
            <tr>
                <div id="ctl00_mainContent_divShowDate"><th  align='center'>10/10</th><th  align='center'>11/10</th><th  align='center'>12/10</th><th  align='center'>13/10</th><th  align='center'>14/10</th><th  align='center'>15/10</th><th  align='center'>16/10</th></div>
                
            </tr>
        </thead>
        <tbody>
            <div id="ctl00_mainContent_divContent">
                <tr><td>Slot 0 </td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                </tr>
                <tr><td>Slot 1 </td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                </tr>
                <tr><td>Slot 2 </td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                </tr>
                <tr><td>Slot 3 </td>
                    <td><p>LAB211-<br/> at AL-R201 <a > <br/>(<font color=Green>attended</font>)<br/><span>(10:50-12:20)</span><br/></p></td>
                    <td>-</td>
                    <td><p>LAB211- <br/> at AL-R201 -  <br/>(<font color=red>Not yet</font>)<br/><span>(10:50-12:20)</span><br/></p></td>
                    <td>-</td>
                    <td><p>LAB211- <br/> at AL-R201 - <br/>(<font color=red>Not yet</font>)<br/><span>(10:50-12:20)</span><br/></p></td>
                    <td>-</td>
                    <td>-</td>
                </tr>
                <tr><td>Slot 4 </td>
                    <td><p>IOT102-<br/> at DE-311 <a >  <br/>(<font color=Green>attended</font>)<br/><span>(12:50-14:20)</span><br/></p></td>
                    <td>-</td>
                    <td><p>IOT102-<br/> at DE-311 - <br/>(<font color=red>Not yet</font>)<br/><span>(12:50-14:20)</span><br/></p></td>
                    <td>-</td>
                    <td><p>IOT102-<br/> at DE-311 - <br/>(<font color=red>Not yet</font>)<br/><span>(12:50-14:20)</span><br/></p></td>
                    <td>-</td>
                    <td>-</td>
                </tr>
                <tr><td>Slot 5 </td>
                    <td><p><a href="reportAttendance">PRJ301-</a><br/> at DE-C203 <br/>(<font color=Green>attended</font>)<br/><span>(14:30-16:00)</span><br/></p></td>
                    <td>-</td>
                    <td><p>PRJ301-<br/> at DE-C203 -  <br/>(<font color=red>Not yet</font>)<br/><span>(14:30-16:00)</span><br/></p></td>
                    <td><p>JPD123-<br/> at DE-C301 -  <br/>(<font color=red>Not yet</font>)<br/><span>(14:30-16:00)</span><br/></p></td>
                    <td><p>PRJ301-<br/> at DE-C203 - <br/>(<font color=red>Not yet</font>)<br/><span>(14:30-16:00)</span><br/></p></td>
                    <td>-</td>
                    <td>-</td>
                </tr>
                <tr><td>Slot 6 </td>
                    <td><p>MAS291-<br/> at DE-C203 <a > <br/>(<font color=Green>attended</font>)<br/><span >(16:10-17:40)</span><br/></p></td>
                    <td><p>JPD123-<br/> at DE-C301 <a > <br/>(<font color=Green>attended</font>)<br/><span >(16:10-17:40)</span><br/></p></td>
                    <td><p>MAS291-<br/> at DE-C203 -   <br/>(<font color=red>Not yet</font>)<br/><span>(16:10-17:40)</span><br/></p></td>
                    <td><p>JPD123-<br/> at DE-C301 - <br/>(<font color=red>Not yet</font>)<br/><span>(16:10-17:40)</span><br/></p></td>
                    <td><p>MAS291-<br/> at DE-C203 -<br/>(<font color=red>Not yet</font>)<br/><span>(16:10-17:40)</span><br/></p></td>
                    <td>-</td>
                    <td>-</td>
                </tr>
                <tr><td>Slot 7 </td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr>
                <tr><td>Slot 8 </td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr></div>
        </tbody>
    </table>  

                                </div>
                            </td>
                        </tr>
                    </table>
            </div>
        </div>
</body>
</html>

