<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,p2.DBInfo" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style4 {font-size: 18px}
body {
	background-color: #FFFF66;
}
-->
</style>
</head>

<%
	session.setAttribute("aprv","aprv");
	Connection con= DBInfo.con;
	//String aid=(String)session.getAttribute("aid");
	String aid=request.getParameter("AId");
	String query="Update article set approved='1' where articleid=?";
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1,aid);
	int flag=ps.executeUpdate();
	
	if(flag!=0)
	{	
		if((String)session.getAttribute("rejected1")!=null)
		{
		
		response.sendRedirect("CommonToAll.jsp?rejected");
		}
		else
		response.sendRedirect("CommonToAll.jsp?aprv");
	}
		else
		{
	%>
			<h1><font color=red>Approval Failed....!!</font></h1>
			
	<%
	}
	%>
			

</html>
