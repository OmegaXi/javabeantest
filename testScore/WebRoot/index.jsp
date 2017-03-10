<%@ page language="java" pageEncoding="utf-8"%>
<html>
<head>
<title>Student Score</title>
</head>
<jsp:useBean id="test" class="test.StudentScore" scope="page"></jsp:useBean>
<jsp:setProperty name="test"  property="name" value="zhangsan"/>
<jsp:setProperty name="test"  property="yuwen" value="84"/>
<jsp:setProperty name="test"  property="shuxue" value="98"/>
<jsp:setProperty name="test"  property="yingyu" value="91"/>

<body>
Student name:<jsp:getProperty name="test" property="name" /> <br>
Student Chinese score:<jsp:getProperty name="test" property="yuwen" /> <br>
Student Math score:<jsp:getProperty name="test" property="shuxue" /> <br>
Student English score:<jsp:getProperty name="test" property="yingyu" /> <br>
<% 
double a,b,c,d;
a=test.getYuwen();
b=test.getShuxue();
c=test.getYingyu();
d=calaver(a,b,c);
out.println("平均成绩："+d);
%>
<%!
public double calaver(double a,double b,double c){
return (a+b+c)/3;
}
 %>
</body>
</html>
