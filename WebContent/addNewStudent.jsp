<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String batch=request.getParameter("batch");
String btime=request.getParameter("btime");
String rollNo=request.getParameter("rollNo");
String name=request.getParameter("name");
String fatherName=request.getParameter("fatherName");
String gender=request.getParameter("gender");
//out.println(course+" "+branch+" "+rollNo+" "+name+" "+fatherName+" "+gender);
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("insert into student (batch,btime,rollNo,name,fatherName,gender) values ('"+batch+"','"+btime+"','"+rollNo+"','"+name+"','"+fatherName+"','"+gender+"');");
	response.sendRedirect("adminHome.jsp");
}
catch(Exception e)
{
	out.println(e);
}
%>