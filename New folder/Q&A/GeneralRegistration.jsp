<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<script type="text/JavaScript">

function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}

</script>
<style type="text/css">

body {
	background-color: #FFFF99;
}
.style1 {color: #000000}

</style>
</head>

<body>
<%
	if((String)session.getAttribute("utype1")==null)
	{
%>
<a href="Index.jsp">Go to HOME page</a>
<form action="RegDone.jsp" method="post">
<%
	}
	else
	{
%>
<form action="../RegDone.jsp" method="post">
<%
	}
%>

<div class="w3-col m9" style="margin-top: px">
  <div class="w3-row-padding">
  <div class="w3-col m12">
 <div class="w3-card w3-round w3-white">
 <div class="w3-container w3-padding" >
<p>Registration</p>
 <div class="w3-row-padding" style="margin:0 -16px 8px -16px">
          
            <input class="w3-input w3-border" type="text" name="textfield1"  id="textfield1" placeholder="Name" required/>         
		  <br />
		   <input class="w3-input w3-border" type="text" name="textfield3" maxlength="13" placeholder="Mobile No." required/>         
		  <br />
		  <input class="w3-input w3-border" type="email" name="textfield4" placeholder="Email Address" required/>         
		  <br />
            <input class="w3-input w3-border" type="password" placeholder="Password" name="textfield6" id="textfield6" required/>
           <br />
		    <input class="w3-input w3-border"  name="textfield7" type="password" id="textfield7" onkeyup="func()" placeholder="Retype Password" required />
         <br />
		 <div id="textfield111"></div>
		      <table  class="w3-input">
			  <tr>
    <td height="26"><div align="center">Usertype</div></td>
    <%
	  	if(session.getAttribute("utype1")=="Admin")
		{
		%>
		<td><div>
		<div align="left">
		<%@ include file="UserTypes.jsp"%>
		</div>
			</div>
	  </td>
		<%
		}
		else
		{
		%>
			<td><div>
			  <div align="left">
				<input name="textfield8" type="text" id="textfield8" value="User" readonly="true"/>
			  </div>
			</div>
			</td>
		<%
		}
		%>
  </tr>
  </table>
	   <br />
        <input type="submit" class="w3-button w3-theme" name="Submit" value="Submit" />
		</div>
		</div>
		</div>
        </div>
		</div>
		
<!--<table width="60%" height="100%" cellpadding="4">
  <tr>
    <td colspan="2"><div align="center">Register Now </div></td>
  </tr>
  <tr>
    <td width="542"><div align="center">Name</div></td>
    <td width="534"><label>
      <input name="textfield1" type="text" id="textfield1" required />
    </label></td>
  </tr>
  <tr>
    <td><div align="center">Mobile No. </div></td>
    <td><label>
      <input name="textfield3" type="text" maxlength="13" required/>
    </label></td>
  </tr>
  <tr>
    <td><div align="center">Email Address </div></td>
    <td><label>
      <input type="email" name="textfield4" required/>
    </label></td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td><div align="center">Password</div></td>
    <td><label>
      <input name="textfield6" type="password" id="textfield6" required/>
    </label></td>
  </tr>
  <tr>
    <td><div align="center">Retype Password </div></td>
    <td><label>
      <input name="textfield7" type="password" id="textfield7" onkeyup="func()" required />
    </label>
	 <div id="textfield111"></div></td>
  </tr>
  <tr>
    <td height="26"><div align="center">Usertype</div></td>
    <
</table>-->
</form>
<script type="text/javascript">
var pas=document.getElementById('textfield6');

function func(){
var x=pas.value;
var y=document.getElementById('textfield7');
var y1=y.value;
if(!x.startsWith(y1)){
document.getElementById('textfield111').innerHTML='<h5 style:"color="red"; ">password not matched </h5>';
}else if(x.startsWith(y1)){
document.getElementById('textfield111').innerHTML='';
}
}
</script>
</body>
</html>
