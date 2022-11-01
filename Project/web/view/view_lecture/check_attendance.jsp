<%-- 
    Document   : check_attendance
    Created on : Oct 14, 2022, 10:17:49 AM
    Author     : win
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title>Take Attendance</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Bootstrap -->
	<link href="bootstrap.min.css" rel="stylesheet">
	<!-- Embed css link here-->
	
        <link rel="stylesheet" href="bootstrap.min.css" type="text/css"/>
    </head>
    <body>
        <div class="container">
            
            <style>
                
                .a {
                    margin-top:10px;
                    margin-bottom: 50px;
                    
                }
                .a1 {
                    float: right; 
                    margin-right: 20px;
                }
                .a1 a, .a1 span {
                    border: none;
                    outline: none;
                    padding: 4px;
                    color: white;
                    background-color: #333;
                    border-radius: 5px;
                }
              
                .a2 {
                    text-decoration: none;
                }
                
            </style>

            <div class="a">
                <div class="a1">
                    <a href="">
                        <span>leacturer</span>
                    </a> | 
                    <span> CAMPUS: FPTU-Hòa Lạc</span>
                </div>
                <div class="a2">
                    <span>
                        <a href='#'>Timetable of lecture</a>|
                        <a href="">Take Attendance</a>|
                        
                    </span>
                </div>
            </div>
            <div>
                <h1>Take Attendance</h1>  
            </div>
            <div>
                <p> <span>Attendance for</span>
                    <b>JPD123</b> at slot 6 on Tuesday 11/10/2022, Fall2022, at room DE_301.
                    This is the session number 3 of the course.
                </p>
            </div>
            <style>
                  .b table {
                        font-family: arial, sans-serif;
                        border-collapse: collapse;
                        width: 100%;
                    }
                    td {
                        text-align: left;
                        padding: 8px;
                    }
                    .b td, th {
                        border: 1px solid #dddddd;
                        text-align: left;
                        padding: 8px;
                    }
                    .b th {
                        background-color: rgb(124, 156, 190);
                    } 
            </style>
            
            <div class="b">
                <table>
                    <thead>
                        <tr>
                            <th>NO</th>
                            <th>GROUP</th>
                            <th>ROLLNUMBER</th>
                            <th>FULLNAME</th>
                            <th>ABSENT</th>
                            <th>PRESENT</th>
                            <th>COMMENT</th>
                            <th>SHOW IMAGE</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td><font color="blue">SE1645</font></td>
                            <td><font color="blue">HE163829</font></td>
                            <td>Pham Cong Chi</td>
                            <td><input type="radio" name="present" value="absent"/> Absent</td>
                            <td><input type="radio" name="present" value="present"/> Present </td>
                            <td><input type="text"/></td>
                            <td>
                                <p>Show Image</p>
                                <img src="#" style="height:150px;width:150px;border-width:0px;"/> 
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td><font color="blue">SE1645</font></td>
                            <td><font color="blue">HE163456</font></td>
                            <td>Le Tran Tien Dong</td>
                            <td><input type="radio" name="present" value="absent"/> Absent</td>
                            <td><input type="radio" name="present" value="present"/> Present </td>
                        
                            <td><input type="text"/></td>
                            <td>
                                <p>Show Image</p>
                                <img src="#" style="height:150px;width:150px;border-width:0px;"/> 
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td><font color="blue">SE1645</font></td>
                            <td><font color="blue">HE161999</font></td>
                            <td>Tran Van A</td>
                            <td><input type="radio" name="present" value="absent"/> Absent</td>
                            <td><input type="radio" name="present" value="present"/> Present </td>
                        
                            <td><input type="text"/></td>
                            <td>
                                <p id="show image" onclick="show()">Show Image</p>
                                <img src="#" style="height:150px;width:150px;border-width:0px;"/> 
                            </td>
                        </tr>
                            <tr>
                            <td>4</td>
                            <td><font color="blue">SE1645</font></td>
                            <td><font color="blue">HE161111</font></td>
                            <td>Tran Van B</td>
                            <td><input type="radio" name="present" value="absent"/> Absent</td>
                            <td><input type="radio" name="present" value="present"/> Present </td>
                        
                            <td><input type="text"/></td>
                            <td>
                                <p>Show Image</p>
                                <img src="#" style="height:150px;width:150px;border-width:0px;"/> 
                            </td>
                        </tr>
                            <tr>
                            <td>5</td>
                            <td><font color="blue">SE1645</font></td>
                            <td><font color="blue">HE162313</font></td>
                            <td>Nguyen Van C</td>
                            <td><input type="radio" name="present" value="absent"/> Absent</td>
                            <td><input type="radio" name="present" value="present"/> Present </td>
                        
                            <td><input type="text"/></td>
                            <td>
                                <p>Show Image</p>
                                <img src="#" style="height:150px;width:150px;border-width:0px;"/> 
                            </td>
                        </tr>
                            <tr>
                            <td>6</td>
                            <td><font color="blue">SE1645</font></td>
                            <td><font color="blue">HE162222</font></td>
                            <td>Nguyen Van D</td>
                            <td><input type="radio" name="present" value="absent"/> Absent</td>
                            <td><input type="radio" name="present" value="present"/> Present </td>
                        
                            <td><input type="text"/></td>
                            <td>
                                <p>Show Image</p>
                                <img src="#" style="height:150px;width:150px;border-width:0px;"/> 
                            </td>
                        </tr>
                            <tr>
                            <td>7</td>
                            <td><font color="blue">SE1645</font></td>
                            <td><font color="blue">HE161000</font></td>
                            <td>Chu Huu Thanh</td>
                            <td><input type="radio" name="present" value="absent"/> Absent</td>
                            <td><input type="radio" name="present" value="present"/> Present </td>
                        
                            <td><input type="text"/></td>
                            <td>
                                <p>Show Image</p>
                                <img src="#" style="height:150px;width:150px;border-width:0px;"/> 
                            </td>
                        </tr>
                            <tr>
                            <td>8</td>
                            <td><font color="blue">SE1645</font></td>
                            <td><font color="blue">HE160000</font></td>
                            <td>Pham Linh Chi</td>
                            <td><input type="radio" name="present" value="absent"/> Absent</td>
                            <td><input type="radio" name="present" value="present"/> Present </td>
                        
                            <td><input type="text"/></td>
                            <td>
                                <p>Show Image</p>
                                <img src="#" style="height:150px;width:150px;border-width:0px;"/> 
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
                
            
            
        </div>
    </body>
</html>
