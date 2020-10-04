<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
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
<style type="text/css">
<!--
body {
	background-color: #FFFF99;
}
-->
</style></head>

<body>
<%
if((String)session.getAttribute("utype1")=="User")
{
%>
<form action="PassChanged.jsp" method="post">
<%
}
else
{
%>
<form action="../user/PassChanged.jsp" method="post">
<%
}
%> 
 <br />
  <br />
<div class="w3-col m9" style="margin-top: 25px">
  <div class="w3-row-padding">
        <div class="w3-col m12">
 <div class="w3-card w3-round w3-white">

 <div class="w3-container w3-padding" >

<p>Change Password <i class="fa fa-coffee"></i></p>
      <form action="/action_page.php" target="_blank">
        <div class="w3-row-padding" style="margin:0 -16px 8px -16px">
          
            <input class="w3-input w3-border" type="text" name="textfield1" id="textfield1" value="<%=session.getAttribute("emailid")%>" readonly="true"/>
         
		  <br />
          
            <input class="w3-input w3-border" type="text" placeholder="Old Password" name="textfield2" id="textfield1" required/>
          
		  <br />
		  
            <input class="w3-input w3-border" type="password" placeholder="New Password" name="textfield3" id="textfield3" required/>
         <br />
		  
            <input class="w3-input w3-border" type="password" placeholder="Retype New Password" name="textfield4" id="textfield4" onkeyup="func()" required/>
          <br />
       <div id="textfield111" > </div>
	   <br />
        <input type="submit" class="w3-button w3-theme" name="Submit" value="Submit" />
		</div>
		</div>
		</div>
        </div>
		</div>
      </form>

<!--<center><table width="60%" height="100%"  cellpadding="10">
  <tr>
    <td colspan="2"><div align="center">Change Password </div></td>
  </tr>
  
  <tr>
    <td width="149" height="46"><div align="center">Email Id</div></td>
    <td width="188"><label>
    <input name="textfield1"type="text" id="textfield1" value="<%=session.getAttribute("emailid")%>" size="30" readonly="true"/>
    </label></td>
  </tr>
  
  <tr>
    <td width="149" height="46"><div align="center">Old Password </div></td>
    <td width="188"><label>
    <input name="textfield2" type="password" id="textfield1" required/>
    </label></td>
  </tr>
  <tr>
    <td width="149" height="46"><div align="center">New Password</div></td>
    <td width="188"><label>
    <input name="textfield3" type="password" id="textfield3" required/>
    </label></td>
  </tr>
  <tr>
    <td width="149" height="46"><div align="center">Retype New Password </div></td>
    <td width="188"><label>
    <input name="textfield4" type="password" id="textfield4" onkeyup="func()" required/>
    </label>
	<div id="textfield111" > </div></td>
  </tr>
  
  
  <tr>
    <td height="56" colspan="2">
      <div align="center">
        <input type="submit" name="Submit" value="Submit" />
      </div>
      </td>
  </tr>
</table></center>

</form>-->
</form>
<script type="text/javascript">
var pas=document.getElementById('textfield3');

function func(){
var x=pas.value;
var y=document.getElementById('textfield4');
var y1=y.value;
if(!x.startsWith(y1)){
document.getElementById('textfield111').innerHTML='<h5 style:"color="red"; ">Password Not Matched </h5>';
}else if(x.startsWith(y1)){
document.getElementById('textfield111').innerHTML='';
}
}
</script>
</body>
</html>
