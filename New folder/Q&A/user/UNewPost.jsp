<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,java.util.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body {
	background-color: #FFFF99;
}
.style5 {
	color: #FF0000;
	font-weight: bold;
	font-size: 18px;
}
.style8 {font-size: 18px}
.len{ width: 80%}
-->
</style>
</head>


<%
	String email1=(String)session.getAttribute("emailid");
	String aid="";
	for(int i=0;i<5;i++)
	{
		aid+=(int)(Math.random()*9)+1;
	}
	//Date d=new Date();
	//-----------------------------------------
	  Date dNow = new Date( );
      SimpleDateFormat ft = new SimpleDateFormat ("yyyy.MM.dd hh:mm");

      //System.out.println("Current Date: " + ft.format(dNow));
	//-----------------------------------------
	if(email1!=null)
	{
%>


<body>
<br />

<br />
<!-- Middle Column -->

    <div class="w3-col m9" style="margin-top:15px">
    <form action="CommonToAll.jsp?ArticlePosted" method="post">
      <div class="w3-row-padding">
        <div class="w3-col m12">
          <div class="w3-card w3-round w3-white">
            <div class="w3-container w3-padding" >
              <h6 class="w3-opacity">New Post</h6>
               <input name="textfield1" type="Hidden" id="textfield1" value="<%=aid%>" size="25" readonly="true" />
			   <input name="textfield111" type="Hidden" id="textfield1" value="<%=ft.format(dNow)%>" size="25" readonly="true" />
			   <textarea name="textarea1"  class="w3-border w3-padding" cols="70%" rows="1">Question</textarea>
			   <br /><br />
			   <textarea name="textarea" class="w3-border w3-padding" cols="70%" rows="3">Answer</textarea>
			   <br /><br />
             <i class="fa fa-pencil"></i><input type="submit" class="w3-button w3-theme" name="Submit" value="Submit" i></i>  
            </div>
          </div>
        </div>
      </div>



	<!--  <table width="100%">
        <tr>
          <td colspan="2"><div align="center" class="style5">New Post </div></td>
        </tr>
           
        <tr>
          <td width="49%"><div align="center" class="style8">Question</div></td>
          <td width="51%"><textarea name="textarea2" cols="100%" rows="3"></textarea></td>
        </tr>
		<tr>        </tr>
        <tr>
          <td valign="middle"><div align="center" class="style8">Description</div></td>
          <td><label>
            <textarea name="textarea" cols="100%" rows="6" required></textarea>
          </label></td>
        </tr>
        
        <tr>
          <td colspan="2">
            <div align="center">
              <input type="submit" name="Submit" value="Submit" />
            </div>          </td>
        </tr>
      </table>-->
	  </form>
	  </div>
	  
<%
	}
	else
	response.sendRedirect("../Index.jsp");
%>

 <!-- Right Column -->
    <div class="w3-col m2" style="max-width:1400px;margin-top: 8px">
      <div class="w3-card w3-round w3-white w3-center">
        <div class="w3-container">
          <p>Upcoming Events:</p>
          <img src="../Images/elections.jpg" alt="Forest" style="width:100%;">
          <p><strong>Elections</strong></p>
          <p>April-May</p>
          
        </div>
      </div>
      <br>
	  
</body>
</html>
