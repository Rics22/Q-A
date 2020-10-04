<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Ask Me Anything</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
html, body, h1, h2, h3, h4, h5 {font-family: "Open Sans", sans-serif}
a:link {
    color: red;
}

/* visited link */
a:visited {
    color: green;
}

/* mouse over link */
a:hover {
    color: hotpink;
}

/* selected link */
a:active {
    color: blue;
}
</style>
</head>

<body class="w3-theme-l5">
<!-- Navbar -->
<div class="w3-top">
 <div class="w3-bar w3-theme-d2 w3-left-align w3-large">
  <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large w3-theme-d4"><i class="fa fa-home w3-margin-right"></i>Logo</a>
  <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="News"><i class="fa fa-globe"></i></a>
  <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="Account Settings"><i class="fa fa-user"></i></a>
  <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="Messages"><i class="fa fa-envelope"></i></a>
  <div class="w3-dropdown-hover w3-hide-small">
    <button class="w3-button w3-padding-large" title="Notifications"><i class="fa fa-bell"></i><span class="w3-badge w3-right w3-small w3-green">3</span></button>     
    <div class="w3-dropdown-content w3-card-4 w3-bar-block" style="width:300px">
      <a href="#" class="w3-bar-item w3-button">One new friend request</a>
      <a href="#" class="w3-bar-item w3-button">John Doe posted on your wall</a>
      <a href="#" class="w3-bar-item w3-button">Jane likes your post</a>
    </div>
  </div>
  <a href="#" class="w3-bar-item w3-button w3-hide-small w3-right w3-padding-large w3-hover-white" title="My Account">
    <img src="/w3images/avatar2.png" class="w3-circle" style="height:23px;width:23px" alt="Avatar">
  </a>
 </div>
</div>

<!-- Navbar on small screens -->
<div id="navDemo" class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium w3-large">
  <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 1</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 2</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 3</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large">My Profile</a>
</div>

<div align="center">

  <table width="100%" height="716" border="1">
    <tr>
      <td height="114" colspan="3"><%@ include file="Header.jsp"%>&nbsp;</td>
    </tr>
    <tr>
      <td width="143" height="499" valign="top"><p class="style4"><a href="Index.jsp?login">Login</a></p>
      <p class="style4"><a href="Index.jsp?reg">SignUp</a></p></td>
	   <%
	  		if(request.getParameter("Srch")==null && request.getParameter("login")!=null)
			{
			%>
	 		 <td width="933" height="339" valign="middle"><div align="center" class="style4"><%@ include file="Login1.jsp"%></div></td>
			<%
			}
	 	%>
		 <%
	  		if(request.getParameter("Srch")==null &&request.getParameter("reg")!=null)
			{
			%>
	 		 <td width="933" height="339" valign="middle"><div align="center" class="style4"><%@ include file="GeneralRegistration.jsp"%></div></td>
			<%
			}
	 	%>
		 <%
	  		if(request.getParameter("Srch")!=null && request.getParameter("reg")==null && request.getParameter("login")==null)
			{
			%>
	 		 <td align="left" valign="top" ><div align="left">
	 		   <%@ include file="user/SearchCommontry.jsp"%>
	 		   </div>
	  <td height="23"></td>
			<%
			}
	 	%>
		<%
			  if(request.getParameter("reg")==null && request.getParameter("login")==null && request.getParameter("Srch")==null && request.getParameter("AID")==null && request.getParameter("norcrds")==null)
			  {
				  session.setAttribute("Home","Home");
				  if(request.getParameter("ArticleId")==null)
				  {
				  %>
				  <td width="909" align="left" valign="top"><%@ include file="ViewTitles.jsp"%></td>
				  <%
				  }
				  else
				  {
				  %>
				   <td width="909" align="left" valign="top"><%@ include file="user/ViewPosttry.jsp"%></td>
				   <%
				   }
			  }
	   	%>
		 <%
	  		String str=request.getParameter("AID");
			
	  		if(str!=null)
			{
			session.setAttribute("AID",str);
			%>
	  			<td width="102" height="339" valign="top"><%@ include file="user/ViewPosttry.jsp"%>&nbsp;</td>
			<%
			}
		
	 	 %>
		 <%
	  		if(request.getParameter("norcrds")!=null)
			{
			%>
	  			<td valign="top">No Record Found...!!</td>
			<%
			}
		
	 	 %>
    </tr>
    <tr>
      <td colspan="3"><%@ include file="Footer.html"%>&nbsp;</td>
    </tr>
</table>
</div>
</body>
</html>
