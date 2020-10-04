<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style></head>

<body>
<br />
<br />
<form action="../servlet/SendMail" method="post">
  
  <div class="w3-col m9" style="margin-top: 20px">
  <div class="w3-row-padding">
  <div class="w3-col m12">
 <div class="w3-card w3-round w3-white">
 <div class="w3-container w3-padding" >
<p>Contact The Moderator</p>
      <form action="/action_page.php" target="_blank">
       <div class="w3-row-padding" >              
  <%
  String emailusr=(String)session.getAttribute("emailid");
  System.out.print("==========================email::"+emailusr);
  if((String)session.getAttribute("utype1")=="User")
  {
  %>
  <input name="emailuser" type="hidden" value=<%=emailusr%> width="500" />
  
    <input name="to" type="hidden" id="to" value="ssssidjain@gmail.com" width="500" />
    <%
  }
  else
  {
  %>
  <input type="text" class="w3-input w3-border" name="to"  id="to" placeholder="To" width="500" />
  <%
  }
  %>
 <input class="w3-input w3-border" type="text" placeholder="Subject" name="subject" id="subject" width="500"/>
          
		  <br />
		  
 <textarea class="w3-input w3-border" placeholder="Message" name="msg" id="msg"rows="7" cols="120"></textarea>
          
		  <br />
  
   <input type="submit" class="w3-button w3-theme" name="Submit" value="Submit" />
    
    
		</div>
		</div>
        </div>
		</div>
      </form>
	  
</form>

 
</body>
</html>
