<%@page import="java.sql.*" %>

<%
 String s1,s2,s3;
s1=request.getParameter("t1");
s2=request.getParameter("t2");
s3=request.getParameter("t3");


Connection con;
Statement stmt;
try
{
 Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pet_management","root","");
stmt=con.createStatement();
int k=stmt.executeUpdate("insert into user_login value('"+s1+"','"+s2+"','"+s3+"')");
con.close();
}
catch(Exception e)
{
out.println(e);
}
%>