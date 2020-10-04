<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,java.util.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<script type="text/JavaScript">
<!--
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
//-->
</script>
</head>
<%
	
	String aid=(String)request.getParameter("ArticleIdDlt");
	Connection con= DBInfo.con;
	String query="select * from article where articleid=?";
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1,aid);
	ResultSet res=ps.executeQuery();
	int flag=0;
	String subject="",article="",postedby="",date="";
	//java.util.Date d=new java.util.Date();
	while(res.next())
						{
							postedby=res.getString(1);
							subject=res.getString(3);
							article=res.getString(4);
							date=res.getString(5);
							flag=1;
							break;
						
						}		
	
	if(flag!=0)
	{
%>
<body>
<%
if((String)session.getAttribute("utype1")=="User")
{
%>
<form action="UDeletionDone.jsp" method="post">
<%
}
%>
<%
if((String)session.getAttribute("utype1")!="User")
{
%>
<div class="w3-col m9" style="margin-top: 5px">
<form action="../user/UDeletionDone.jsp" method="post">
<%
}
%>
<br />
<br />
 <div class="w3-row-padding">
        <div class="w3-col m12">
          <div class="w3-card w3-round w3-white">
            <div class="w3-container w3-padding" >
				<h6 class="w3-opacity">Delete Post</h6>
  
    <input name="textfield1" type="hidden" value="<%=postedby%>"id="textfield1" readonly="true" />
    <input name="textfield2" type="hidden" value="<%=aid%>" id="textfield2" readonly="true" />
     <input name="textfield4" type="hidden" id="textfield4" value="<%=date%>" size="25" readonly="true" />
  
      <textarea name="textarea2" class="w3-border w3-padding" cols="100%" rows="3"><%=subject%></textarea>
  <br />
    <textarea name="textarea" class="w3-border w3-padding" cols="100%" rows="8" readonly="true"><%=article%></textarea>
    
   <br />
 
        <div align="center">
          <input type="submit" class="w3-button w3-theme" value="Delete" onclick="return confirm('Are you sure you want to delete?')"/>
             </div></td>
  </tr>
</table>
<%
		}
		else
		{
	%>
			

</form>
			<h1><font color=red>Searching Failed....!!</font></h1>
			
	<%
	}
	%>
</body>
</html>
